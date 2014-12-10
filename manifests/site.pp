package {'ruby-dev':
   ensure => 'installed',

}

package { 'rails':
   ensure => 'installed',
   provider => 'gem',
   require => Package['ruby-dev'],
}
