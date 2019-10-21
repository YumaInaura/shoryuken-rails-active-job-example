class SampleJob < ApplicationJob
  queue_as :example1

  def perform(*args)
    sleep 1
    puts "AH WORKED!! #{Time.current}"
  end
end
