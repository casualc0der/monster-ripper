require 'minitest/autorun'
require_relative '../lib/apicaller'

class TestMonster < Minitest::Test
  def setup
    monster = Monster.new
  end

  def test_monster_file_exists
  end
end