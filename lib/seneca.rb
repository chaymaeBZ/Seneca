require "seneca/version"

module Seneca
  class application
    def call(env)
      run proc {
        [200, {'Content-type' => 'text/html'}, ["This is working!! Seneca is awesome :) - Ruby"]]
      }
    end
  end
end
