require "seneca/version"
require "seneca/array"
require "seneca/routing"
require "seneca/util"
require "seneca/dependencies"

module Seneca
  class Application
    def call(env)
      if env['PATH_INFO'] == '/favicon.ico'
        return [404, { 'Content-type' => 'text/html' }, []]
      elsif env['PATH_INFO'] == '/'
       ##
       # env['PATH_INFO'] = '/quotes/day_quote'
       ##
       # path = File.expand_path "public/index.html"
       # file = File.open(path, "rb")
       # text = file.read
       # file.close
       # code = 200
       ##
       return [301, {'location' => 'http://localhost:3001/quotes/day_quote'}, []]
     else
        klass, action = get_controller_and_action(env)
        controller = klass.new(env)
        begin
          text = controller.send(action)
          code = 200
        rescue Exception => e
          text = "The program raised an exception : #{e.message}. \n #{e.backtrace.inspect}"
          code = 500
        end
      end

      [code, { 'Content-type' => 'text/html' }, ["#{text}"]]
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
