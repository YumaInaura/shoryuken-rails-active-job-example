class ShoryukenWorker
  include Shoryuken::Worker

  ENV['QUEUES'].split(',').each do |queue|
    shoryuken_options queue: queue, auto_delete: true
  end

  def perform(sqs_msg, name)
    puts '-' * 100
    puts 'WORKER'
    puts '-' * 100
    puts name
    puts sqs_msg
  end
end