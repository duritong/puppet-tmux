# Install and manage tmux
class tmux {
  case $::kernel {
    openbsd: { include tmux::openbsd }
    default: { include tmux::base }
  }
}
