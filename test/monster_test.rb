require 'minitest/autorun'
require_relative '../lib/monster-stats'

class TestMonster < Minitest::Test
  attr_reader :monster, :default_monster, :zombie
  def setup
    @default_monster = Monster.new("Aboleth")
    @monster = Monster.new("Gary", "Aboleth")
    @zombie = Monster.new("Steve", "Zombie")
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
  def test_aboleth_index_is_zero
    assert_equal 0, monster.index
  end
  def test_zombie_index_is_321
    assert_equal 321, zombie.index
  end
  def test_aboleth_strength
    assert_equal 21, monster.strength
  end
  def test_zombie_strength
    assert_equal 13, zombie.strength
  end
  def test_aboleth_dexterity
    assert_equal 9, monster.dexterity
  end
  def test_zombie_dexterity
    assert_equal 6, zombie.dexterity
  end
  def test_aboleth_constitution
    assert_equal 15, monster.constitution
  end
  def test_zombie_constitution
    assert_equal 16, zombie.constitution
  end
  def test_aboleth_intelligence
    assert_equal 18, monster.intelligence
  end
  def test_zombie_intelligence
    assert_equal 3, zombie.intelligence
  end
  def test_aboleth_wisdom
    assert_equal 15, monster.wisdom
  end
  def test_zombie_wisdom
    assert_equal 6, zombie.wisdom
  end
  def test_aboleth_charisma
    assert_equal 18, monster.charisma
  end
  def test_zombie_charisma
    assert_equal 5, zombie.charisma
  end
  def test_aboleth_challenge_rating
    assert_equal 10, monster.challenge_rating
  end
  def test_zombie_challenge_rating
    assert_equal 0.25, zombie.challenge_rating
  end
end