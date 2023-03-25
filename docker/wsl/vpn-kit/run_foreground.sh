#!/bin/bash

VMEXEC_PATH=$HOME/.dotfiles/docker/wsl/vpn-kit/wsl-vm
GVPROXY_PATH=$HOME/.dotfiles/docker/wsl/vpn-kit/wsl-gvproxy.exe

# sudo VMEXEC_PATH=$VMEXEC_PATH GVPROXY_PATH=$GVPROXY_PATH sh $HOME/.dotfiles/docker/wsl/vpn-kit/wsl-vpnkit &> $HOME/.vpn-kit.log &
sudo VMEXEC_PATH=$VMEXEC_PATH GVPROXY_PATH=$GVPROXY_PATH sh $HOME/.dotfiles/docker/wsl/vpn-kit/wsl-vpnkit

