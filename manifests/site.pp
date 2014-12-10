package {'sqlite3':
   ensure => 'installed',
}

package {'libsqlite3-dev':
   ensure => 'installed',
   require => Package['sqlite3'],
}

package {'ruby-dev':
   ensure => 'installed',

}
package { 'rails':
   ensure => 'installed',
   provider => 'gem',
   require => Package['ruby-dev'],
}
