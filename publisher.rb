require_relative 'config/application'

PublisherService.publish(File.read(File.expand_path('../', __FILE__ ) + '/public/report.json'))