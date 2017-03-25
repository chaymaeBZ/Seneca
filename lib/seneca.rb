require "seneca/version"
require "seneca/array"

module Seneca
  class Application
    def call(env)
      [200, {'Content-type' => 'text/html'}, ["This is working!! Seneca is awesome :) - Ruby #{[1, 1, 2].sum } #{[1, 1, 2].max}"]]
    end
  end
end
