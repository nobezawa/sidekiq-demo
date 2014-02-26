class HardWorker
  include Sidekiq::Worker
  sidekiq_options queue: :home
  
  def perform(name, count)
    puts "Doing hard work: name=" + name + ", count=" + count.to_s
  end
end
