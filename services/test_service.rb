class TestService
  include TorqueBox::Injectors

  def initialize(options = {})
    @queue = fetch('/queues/test')
    @queue1 = TorqueBox::Messaging::Queue.new('/queues/test')
  end

  def start
    puts @queue.class
    puts @queue1.class
  end

  def stop
    puts @queue.class
    puts @queue1.class
  end
end
