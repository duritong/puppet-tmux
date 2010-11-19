class tmux {
  case $kernel {
    linux: { include tmux::base }
    openbsd: { include tmux::openbsd }
    default: { fail("No idea how to install tmux on $kernel") }
  }
}
