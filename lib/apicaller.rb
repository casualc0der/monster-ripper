require 'httparty'
require 'json'

#only to be ran once to retrieve all monsters data -> do not abuse this API!!

class ApiCaller
  attr_reader :monsters
  include HTTParty
  base_uri = "http://dnd5eapi.co/"

  def monsters
    response = HTTParty.get("http://dnd5eapi.co/api/monsters")
    monsters = response['results'].map! {|e| e['index']}
    monsterArray = monster_caller(monsters)
    File.open("monsters.txt", "w") {|f| f.write monsterArray}
  end

  private

  def monster_caller(m)
    x = []
    m.each_with_index do |url, index|
      sleep(0.1)
      response = HTTParty.get("http://dnd5eapi.co/api/monsters/#{url}")
      x.push(response)
      #adds a status to the terminal
      puts "pushed #{url} -- entry #{index+1} of #{m.length}!"
    end
    x
  end
end




