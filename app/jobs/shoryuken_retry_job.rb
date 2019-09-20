# https://api.rubyonrails.org/v6.0.0/classes/ActiveJob/Exceptions/ClassMethods.html
# https://github.com/rails/rails/blob/66cabeda2c46c582d19738e1318be8d59584cc5b/activejob/lib/active_job/exceptions.rb#L50

class ShoryukenRetryJob < ApplicationJob
  queue_as :example3

  class SomeError < StandardError; end

  # def self.retry_on(*exceptions, wait: 3.seconds, attempts: 5, queue: nil, priority: nil)
  #   rescue_from(*exceptions) do |error|
  #     executions = executions_for(exceptions)

  #     if executions < attempts
  #       puts "RETRY!"
  #       retry_job wait: determine_delay(seconds_or_duration_or_algorithm: wait, executions: executions), queue: queue, priority: priority, error: error
  #     else
  #       if block_given?
  #         instrument :retry_stopped, error: error do
  #           yield self, error
  #         end
  #       else
  #         instrument :retry_stopped, error: error
  #         raise error
  #       end
  #     end
  #   end
  # end

  retry_on SomeError, wait: 3.seconds, attempts: 3 do |job, exception|
    puts "JOB SURRENDERD!"
  end

  def perform(message)
    raise SomeError.new('Watch out!')
  end
end
