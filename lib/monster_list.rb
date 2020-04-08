require 'json'

module MonsterList
def self.clean_input
    file = File.read("../monsters.txt")
      clean = file
                .gsub(/#<HTTParty::Response:....... parsed_response=/, "")
                .gsub(/=>/, ": ")
                .gsub(/"subtype": nil/, '"subtype": "nil"')
                .gsub(/, .response.{20,500}>/, "")

      sanitized_hash_of_monster_names = JSON.parse(clean, symbolize_names: true)
      File.open("monstertest.JSON", "w") {|f| f.write clean}
  sanitized_hash_of_monster_names
end
  LIST = clean_input
end

