# Automating My Environment Setup

> "Reinvent the wheel" - Unknown

I've spent a lot of time setting up my development environment, especially when installing a new OS.

I could use ready-made tools like Ansible to automate this setup. Although it is a fantastic tool, for my use case it feels like overkill.

## Example with Ansible

Here's an example of installing Neovim with Ansible:
```yaml
- name: Install Neovim from source
  hosts: localhost
  tasks:
    - name: Ensure required packages are installed
      apt:
        name: 
          - git
          - ninja-build
          - gettext
          - libtool
          - libtool-bin
          - autoconf
          - automake
          - cmake
          - g++
          - pkg-config
          - unzip
        state: present
      become: yes

    - name: Clone Neovim repository
      git:
        repo: 'https://github.com/neovim/neovim.git'
        dest: '/usr/local/src/neovim'
        version: 'v0.7.0' 
      become: yes

    - name: Build Neovim
      command: |
        make CMAKE_BUILD_TYPE=Release
      args:
        chdir: '/usr/local/src/neovim'
      become: yes

    - name: Install Neovim
      command: |
        make install
      args:
        chdir: '/usr/local/src/neovim'
      become: yes
```

## Example with Shell Script

A simpler solution with a shell script:
```bash
sudo apt install -y git ninja-build gettext libtool libtool-bin autoconf automake cmake g++ pkg-config unzip
git clone --branch v0.7.0 https://github.com/neovim/neovim.git ~/nvim

cd ~/nvim
make CMAKE_BUILD_TYPE=Release
sudo make install
```

Much simpler.

## Simple Automation

This led me to implement a simple automation solution so that with one command, my setup would be ready, similar to Ansible but in a more straightforward way.

### My Implementation

Starting with the main file `run`:
```bash
#!/usr/bin/env bash

# Get the absolute path of the current script
DIR="$(cd "$(dirname "$(realpath "$0")")" && pwd)"
LIB_DIR="$DIR"/lib

# Source all library files
for FILE in "$LIB_DIR"/*; do
  source "$FILE"
done

detect_distro       # Detect the current Linux distribution, in my case, I handle only Ubuntu and Fedora
update_packages     # Use the package manager of the detected distribution
run_scripts         # Loop through all my script files

print_line "Stowing dotfiles"
stow_dotfiles       # Create symlinks for my dotfiles in the system 

print_line "Installing zsh with ohmyzsh"
install_zsh_ohmyzsh # Install and configure ohmyzsh
```

### Library Functions

```bash
lib/
├── detect_distro
├── install_zsh_ohmyzsh
├── print_line
├── run_scripts
├── stow_dotfiles
└── update_packages
```

### Main Functions

Explanation of what each function does, in order of execution:
```bash
detect_distro() {
  if [[ -f /etc/os-release ]]; then
    source /etc/os-release
    DIST=$ID
  else
    echo "Dist not found."
    exit 1
  fi
}
```
```bash
update_packages() {
  if [[ "$DIST" == "fedora" ]]; then
    echo "dist: $DIST"
    sudo dnf update -y
  elif [[ "$DIST" == "ubuntu" ]]; then
    sudo apt update -y && sudo apt upgrade -y
  else
    echo "dist: $DIST not configured."
    exit 1
  fi
}
```
```bash
run_scripts() {
  if [[ -d "$SCRIPTS_DIR" ]]; then
    for script in "$SCRIPTS_DIR"/"$DIST"/*; do
      print_line "Executing $script..."
      sudo chmod +x "$script"
      sh "$script"
    done
  else
    echo "Scripts dir not found."
    exit 1
  fi
}
```

### Example Scripts

Scripts are simply commands to configure or install what I need, for example:
```bash
scripts/
  └── fedora
      ├── 00_dnf_setup
      # Adding configurations to the Fedora package manager:
      add_line_if_not_exists "max_parallel_downloads=10" /etc/dnf/dnf.conf
      add_line_if_not_exists "fastestmirror=true" /etc/dnf/dnf.conf

      ├── ghostty
      # Example of installation
      sudo dnf copr -y enable pgdev/ghostty
      sudo dnf install -y ghostty

      ├── neovim
      sudo dnf install -y git ninja-build cmake gcc make unzip gettext curl glibc-gconv-extra

      git clone -b stable https://github.com/neovim/neovim.git ~/neovim
      
      cd ~/neovim
      make CMAKE_BUILD_TYPE=RelWithDebInfo
      sudo make install
```

In this way, I can add and maintain my scripts in a much easier and more straightforward way.

Finally, I run stow within my dotfiles folder and configure ohmyzsh. Once the script runs, my setup is ready to use in less than 5 minutes.

What's great is that it's very easy to add support for other distributions, macOS, etc.

## Installation
```bash
git clone https://github.com/itllsv/setup-env.git ~/myenv && ~/myenv/run
```
