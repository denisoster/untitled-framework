class PublisherService
  class << self
    def publish(data)
      @connection = Bunny.new(username: ENV['RABBIT_USERNAME'], password: ENV['RABBIT_PASSWORD'])
      @connection.start
      channel = @connection.create_channel
      queue = channel.queue('detections')
      queue.publish(data)
      @connection.close
    end
  end
end
