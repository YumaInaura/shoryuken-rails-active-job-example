class ShoryukenRandomFailureJob < ApplicationJob
  queue_as :example1
  queue_as :example2

  def perform(message)
    if rand(1..3) <= 1
      puts '-' * 100
      puts 'JOB WOKED'
      puts '-' * 100
      puts "message: #{message}"
      puts '-' * 100
    else
      raise 'Job Failed'
    end
  end
end
