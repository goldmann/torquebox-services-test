class TestService
  include TorqueBox::Injectors

  def initialize(options = {})
    @queue = TorqueBox::Messaging::Queue.new('/queues/test')
    @queue1 = fetch('/queues/test')
    @topic = TorqueBox::Messaging::Topic.new('/topics/test')
    @topic1 = fetch('/topics/test')
  end

  def start
    puts @queue.class
    puts @queue1.class

    puts @topic.class
    puts @topic1.class

    @queue.publish "test"
    @queue1.publish "test"
  end

  def stop
    puts @queue.class
    puts @queue1.class
  end
end
