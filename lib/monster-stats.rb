require_relative './monster_list'

class Monster
  include MonsterList
  attr_reader :name, 
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
    else
      raise NoMethodError
    end
  end

  def strength
    21
  end

  def stats
    {}
  end
end




