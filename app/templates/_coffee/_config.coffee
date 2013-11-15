options =
  # optimize: 'uglify2'
  generateSourceMaps: false
  preserveLicenseComments: true
  wrap: true

  baseUrl: '/'
  paths:
    html5shiv: './vendor/assets/html5shiv/js/html5shiv'
    modernizr: './vendor/assets/modernizr/js/modernizr'
    respond: './vendor/assets/respond/js/respond.min'
    jquery: './vendor/assets/jquery/js/jquery'

  # load non-amd dependencies
  shim:
    jquery:
        exports: '$'

  exclude: [
    'html5shiv'
    'modernizr'
    'respond'
    'jquery'
  ]

# Expose options in the global scope
module.exports = options if module? # for nodejs
window.require = options if window? # for browsers
