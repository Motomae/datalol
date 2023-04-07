require 'net/http'
require 'uri'
require 'json'

API_KEY = 'RGAPI-34105a5c-9bbe-4d72-8824-7787a0488322' #　先程取得したAPI　KEYです
name = "十六夜"
region = "jp"
uri = URI.parse("https://jp.api.pvp.net/api/lol/#{region}/v1.4/summoner/by-name/#{name}?api_key=#{API_KEY}")
return_data = Net::HTTP.get(uri)
summoner_data = JSON.parse(return_data)
summoner_id = summoner_data[name]["id"]

puts summoner_data
# {"himrox"=>{"id"=>6180396, "name"=>"himrox", "profileIconId"=>1381, "summonerLevel"=>30, "revisionDate"=>1484446189000}}

puts summoner_id
# 6180396

