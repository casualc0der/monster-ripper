require "minitest/autorun"
require_relative "../lib/apicaller"

class TestApiCaller < Minitest::Test
  def setup
    @tester = ApiCaller.new('api')
  end

  def test_valid_url
    assert_equal 'api', @tester.url_to_call
  end
end
