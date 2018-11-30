require 'bundler'
Bundler.require
require 'daemons'
require 'dotenv/load'


Daemons.run('receive.rb')
