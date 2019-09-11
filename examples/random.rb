# bundle exec rails runner this-script.rb

class SomeJob < ApplicationJob
  def perform(count)
    puts count
  end
end

1000.times do |i|
  SomeJob.perform_later(i)
end

sleep 1
