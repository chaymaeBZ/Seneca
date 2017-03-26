require "seneca/version"
require "seneca/array"

module Seneca
  class Application
    def call(env)
      [200, {'Content-type' => 'text/html'}, ["This is working!! Seneca is awesome :) -
      given this array : [1, 1, 2, 3, 3, 1] ,
      sum is :  #{[1, 1, 2, 3, 3, 1].sum }, 
      max occurences : #{[1, 1, 2].max_occurences}"]]
    end
  end
end
