define tmux::config(
  $source = 'normal',
  $target = '/root/.tmux.conf',
  $owner  = 'root',
  $group  = '0'
){
  require ::tmux
  file{$name:
    path => $target,
    source => $source ? {
      'normal' => [ "puppet:///modules/site_tmux/${::fqdn}/${name}",
                    "puppet:///modules/site_tmux/${name}",
                    "puppet:///modules/tmux/normal" ],
      default => $source
    },
    owner => $owner, group => $group, mode => 0600;
  }
}
