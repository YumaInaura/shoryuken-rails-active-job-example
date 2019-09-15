class SasmpleJob < ApplicationJob
  queue_as :shoryuken

  def perform(*args)
    # Do something later
  end
end
