class tmux::base {
  package{'tmux':
    ensure => installed,
  }
}
