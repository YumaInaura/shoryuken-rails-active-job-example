class ShoryukenForeverFailureJob < ApplicationJob
  queue_as :example1
  queue_as :example2

  def perform(message)
    raise 'Job Failed'
  end
end
