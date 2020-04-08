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
    
    if genus.include?(monster_type.downcase)
      @type = monster_type.downcase
      @index = genus.find_index(type)
      monster_index = LIST[index]
      
      @hit_points = monster_index[:hit_points]
      @strength = monster_index[:strength]
      @dexterity = monster_index[:dexterity]
      @constitution = monster_index[:constitution]
      @intelligence = monster_index[:intelligence]
      @wisdom = monster_index[:wisdom]
      @charisma = monster_index[:charisma]
      @challenge_rating = monster_index[:challenge_rating]
    else
      raise NoMethodError
    end
  end
  def stats
  {}
  end
end
p Monster.genus_available
# hordeOfZombies =  [Monster.new('gary', 'zombie'), Monster.new('sam','zombie'), Monster.new('david','zombie')]

# p hordeOfZombies[0].hit_points
# hordeOfZombies[0].hit_points -= 23
# p hordeOfZombies[0].hit_points
# p hordeOfZombies[1].hit_points


