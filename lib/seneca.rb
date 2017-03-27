require "seneca/version"
require "seneca/array"

module Seneca
  class Application
    def call(env)
      klass, action = get_controller_and_action(env)
      controller = klass.new(env)
      text = controller.send(action)
      [200, {'Content-type' => 'text/html'}, ["#{text}"]]
    end
  end

  class Controller
    def initialize(env)
      @env = env
    end

    def env
      @env
    end
  end
end
