require 'minitest/autorun'
require './lib/hello_world'

class RegressionTest < Minitest::Test

  def test_handles_no_name
    assert_equal 'Hello, World!', HelloWorld.hello
  end
end
