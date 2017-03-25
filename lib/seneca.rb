require "seneca/version"

module Seneca
  class Application
    def call(env)
      run proc {
        [200, {'Content-type' => 'text/html'}, ["This is working!! Seneca is awesome :) - Ruby"]]
      }
    end
  end
end
