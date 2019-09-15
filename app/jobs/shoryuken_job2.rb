class ShoryukenJob2 < ApplicationJob
  queue_as :example2

  def perform(*args)
    sleep 5
    puts "Worked!"
  end
end
