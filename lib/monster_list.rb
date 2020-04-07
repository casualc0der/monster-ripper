require 'json'

module MonsterList
LIST = (

file = File.read("../monsters.txt")
file.gsub(/#<HTTParty::Response:....... parsed_response=/, "")


file[-2] = ""

JSON.parse(file)

)
end

p MonsterList::LIST