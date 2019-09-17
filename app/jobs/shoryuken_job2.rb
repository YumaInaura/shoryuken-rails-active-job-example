class ShoryukenJob2 < ApplicationJob
  queue_as :example2

  def perform(*args)
    puts "Worked!"
  end
end
