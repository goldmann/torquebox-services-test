require 'torquebox'
require 'sinatra'

class ServicesTest < Sinatra::Base
  include TorqueBox::Injectors

  use TorqueBox::Session::ServletStore

  get '/' do
    "Hello"
  end
end
