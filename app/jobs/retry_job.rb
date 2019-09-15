class RetryJob < ApplicationJob
  retry_on CustomAppException # defaults to 3s wait, 5 attempts
  discard_on ActiveJob::DeserializationError

  queue_as :default

  def perform(*args)
    puts "Worked! #{Time.current}"
    raise CustomAppException
  end
end
