class SampleJob < ApplicationJob
  queue_as :example1

  def perform(*args)
    puts "Worked! #{Time.current}"
  end
end
