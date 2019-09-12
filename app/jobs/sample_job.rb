class SampleJob < ApplicationJob
  queue_as :default

  def perform(*args)
    puts "Worked! #{Time.current}"
  end
end
