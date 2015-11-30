class HardWorker
  include Sidekiq::Worker
  def perform(name)
    # do something
    puts "#{name} working hard"
  end
end