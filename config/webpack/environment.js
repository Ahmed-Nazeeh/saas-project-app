

const { environment } = require('@rails/webpacker')

const webpack = require('webpack')
environment.plugins.prepend('Provide', new webpack.ProvidePlugin({
  $: 'jquery',
  jQuery: 'jquery',
  'window.jQuery': 'jquery',
  Popper: ['popper.js', 'default'],
  moment: 'moment/moment',
  datepicker: 'bootstrap-datepicker/js/bootstrap-datepicker.js'
}))

module.exports = environment