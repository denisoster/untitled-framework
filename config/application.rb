require 'bundler'
Bundler.require
require 'active_record'
require 'activerecord-import'
require 'bunny'
require 'sneakers'
require 'oj'
require 'dotenv/load'

env = 'development' || ENV['env']
db_config = YAML.load(File.open(File.expand_path('../../', __FILE__ ) + '/db/config.yml'))[env]
ActiveRecord::Base.establish_connection(db_config)

require_all File.expand_path('../../', __FILE__ ) + '/app'
