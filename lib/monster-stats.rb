require_relative './monster_list'

class Monster
  include MonsterList
  attr_accessor :hit_points
  attr_reader :name,
              :index,
              :type, 
              :strength, 
              :dexterity, 
              :constitution, 
              :intelligence, 
              :wisdom, 
              :charisma, 
              :challenge_rating, 
              :stats,
              :genus
              

  def self.genus_available
    genus = []
    LIST.each {|e| genus << e[:name].downcase}
    genus
  end

  def genus
    genus = []
    LIST.each {|e| genus << e[:name].downcase}
    genus
  end
  
  def initialize(name="generic", monster_type)
    @name = name
    @genus
    if genus.include?(monster_type.downcase)
      @type = monster_type.downcase
      @index = genus.find_index(type)
      @hit_points = LIST[index][:hit_points]
    else
      raise NoMethodError
    end
  end
  def strength
    LIST[index][:strength]
  end
  def dexterity
    LIST[index][:dexterity]
  end
  def constitution
    LIST[index][:constitution]
  end
  def intelligence
    LIST[index][:intelligence]
  end
  def wisdom
    LIST[index][:wisdom]
  end
  def charisma
    LIST[index][:charisma]
  end
  def challenge_rating
    LIST[index][:challenge_rating]
  end
  def stats
  {}
  end
end

hordeOfZombies =  [Monster.new('gary', 'zombie'), Monster.new('sam','zombie'), Monster.new('david','zombie')]

p hordeOfZombies[0].hit_points
hordeOfZombies[0].hit_points -= 23
p hordeOfZombies[0].hit_points
p hordeOfZombies[1].hit_points


