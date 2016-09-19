# config.ru

require './application'
$stdout.sync = true
run App.new
