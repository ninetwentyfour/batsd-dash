ENV['RACK_ENV'] = 'development'

$:.unshift File.join(File.dirname(__FILE__), 'lib')
require 'batsd-dash'

# set batsd server setting
BatsdDash::ConnectionPool.settings = { host: 'localhost', port: 8127, pool_size: 4}

# run app
run BatsdDash::App
