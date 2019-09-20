class ShoryukenRetryJob < ApplicationJob
  queue_as :example3

  attr_accessor :retries_count

  class SomeError < StandardError; end

  def initialize(*arguments)
    super
    @retries_count ||= 0
  end

  retry_on SomeError, attempts: 3 do |job, exception|
    puts "JOB: #{job}"
    puts "RETRY COUNT : #{retries_count}"
  end

  def perform(message)
    @retries_count += 1
    raise SomeError.new('Watch out!')
  end
end
