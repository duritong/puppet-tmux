class tmux::openbsd {
  # from 4.6 it is builtin
  if $kernelversion < 4.6 {
    include tmux::base
  } 
}
