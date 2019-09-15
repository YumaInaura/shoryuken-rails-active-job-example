class ShoryukenJob < ApplicationJob
  queue_as :example1

  rescue_from ActiveJob::DeserializationError do |ex|
    Shoryuken.logger.error ex
    Shoryuken.logger.error ex.backtrace.join("\n")
  end

  def perform(arg)
    puts arg
    Job.create(message: rand(9999999999))
  end
end
