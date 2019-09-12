class HelloWorker
  include Shoryuken::Worker

  shoryuken_options queue: 'hello', auto_delete: true

  def perform(sqs_msg, name)
    puts "Hello, #{name}"
  end
end