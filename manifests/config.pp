define screen::config(
  $source = 'normal',
  $target = '/root/.tmux.conf',
  $owner  = 'root',
  $group  = '0'
){
  require ::tmux
  file{$name:
    path => $target,
    source => $source ?
      'normal' => [ "puppet:///modules/site-tmux/${fqdn}/${name}",
                    "puppet:///modules/site-tmux/${name}",
                    "puppet:///modules/screen/normal" ],
      default => $source,
    owner => $owner, group => $group, mode => 0600;
  }
}
