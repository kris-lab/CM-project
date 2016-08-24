node default {

  $domain = 'cm-project.dev'

  include 'cm::services'

  class {'cm::application':
    development => true,
  }

  cm::vhost {"www.${domain}":
    path => '/home/vagrant/cm-project',
    debug => true,
    aliases => [$domain, "admin.${domain}"],
    cdn_origin => "origin-www.${domain}",
  }

  env::variable {'PHP_IDE_CONFIG':
    value => 'serverName=www.cm-project.dev',
  }

}
