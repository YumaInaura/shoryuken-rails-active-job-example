class ShoryukenJob < ApplicationJob
  queue_as :example1

  def perform(*args)
    sleep 5
    puts "Worked!"
  end
end
