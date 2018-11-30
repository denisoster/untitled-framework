class ReceiveService
  class << self
    def receive
      @connection = Bunny.new(username: ENV['RABBIT_USERNAME'], password: ENV['RABBIT_PASSWORD'])
      @connection.start
      channel = @connection.create_channel
      queue = channel.queue('detections')
      queue.subscribe(block: true) do |_delivery_info, _properties, body|
        ReportService.import(body)
      end
      @connection.close
    end
  end
end



