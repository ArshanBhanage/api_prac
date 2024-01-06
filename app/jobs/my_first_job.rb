class MyFirstJob < ApplicationJob
  queue_as :default

  def perform(*args)
    puts "Executing MyScheduledJob at #{Time.now}"
  end
end
