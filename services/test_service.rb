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
    @topic.publish "test"

    begin
      @queue1.publish "test"
    rescue Exception => e
      puts "Publish to queue1 failed; #{e.message}"
    end

    begin
      @topic1.publish "test"
    rescue Exception => e
      puts "Publish to topic1 failed; #{e.message}"
    end
  end

  def stop
    puts @queue.class
    puts @queue1.class
  end
end
