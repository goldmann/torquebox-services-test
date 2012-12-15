class TestService
  include TorqueBox::Injectors

  def initialize(options = {})
    @queue = TorqueBox::Messaging::Queue.new('/queues/test')
    @queue1 = fetch('/queues/test')
  end

  def start
    puts @queue.class
    puts @queue1.class

    @queue.publish "test"
    @queue1.publish "test"
  end

  def stop
    puts @queue.class
    puts @queue1.class
  end
end
