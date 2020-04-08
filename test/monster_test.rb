require 'minitest/autorun'
require_relative '../lib/monster-stats'

class TestMonster < Minitest::Test
  attr_reader :monster, :default_monster
  def setup
    @default_monster = Monster.new("Aboleth")
    @monster = Monster.new("Gary", "Aboleth")
  end
  def test_initialize_default
    assert_equal "generic", default_monster.name
  end

  def test_initialize_custom
    assert_equal "Gary", monster.name
    assert_equal "aboleth", monster.type
  end
  def test_genus_available
    assert_equal true, Monster.genus_available.is_a?(Array)
  end
  def test_list_should_have_322_entries
    assert_equal 322, Monster.genus_available.length
  end
  def test_first_class_entry_should_be_aboleth
    assert_equal "aboleth", Monster.genus_available.first
  end
  def test_first_instance_entry_should_be_aboleth
    assert_equal "aboleth", monster.genus.first
  end
  def test_wrong_type_should_raise_error
    assert_raises NoMethodError do
       Monster.new("Pepe")
    end
  end
  def test_stats_should_be_hash
    assert_equal true, monster.stats.is_a?(Hash)
  end
  def test_aboleth_strength
    assert_equal 21, monster.strength
  end
end