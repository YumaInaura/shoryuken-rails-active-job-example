class ShoryukenWorker
  include Shoryuken::Worker

  shoryuken_options queue: 'example1', auto_delete: true
  shoryuken_options queue: 'example2', auto_delete: true
  shoryuken_options queue: 'example3', auto_delete: true

  def perform(sqs_msg, name)
    puts "Hello, #{name}"
  end
end