class ShoryukenRetryJob < ApplicationJob
  queue_as :example3

  class SomeError < StandardError; end

  retry_on SomeError, attempts: 3 do |job, exception|
    puts job
    oyts exception
  end

  def perform(message)
    raise SomeError.new('Watch out!')
  end
end
