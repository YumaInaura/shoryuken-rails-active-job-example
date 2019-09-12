class SampleJob < ApplicationJob
  queue_as :example2

  # shoryuken_options queue: 'sample', auto_delete: true, body_parser: :json

  def perform(*args)
    puts rand(9999999999999)
  end
end
