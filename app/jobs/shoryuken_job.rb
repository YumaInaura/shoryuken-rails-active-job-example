class ShoryukenJob < ApplicationJob
  queue_as :example1
  queue_as :example2

  rescue_from ActiveJob::DeserializationError do |ex|
    Shoryuken.logger.error ex
    Shoryuken.logger.error ex.backtrace.join("\n")
  end

  def perform(message)
    puts '-' * 100
    puts 'JOB WOKED'
    puts '-' * 100
    puts "message: #{message}"
    puts '-' * 100
  end
end
