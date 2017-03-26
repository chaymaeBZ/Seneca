require_relative "test_helper"

class TestApp < Seneca::Application
end

class SenecaTestApp < Test::Unit::TestCase
  include Rack::Test::Methods

  def app
    TestApp.new
  end

  def test_request
    get "/"

    assert last_response.ok?
    body = last_response.body
    assert body["Seneca is awesome "]

  end

end
