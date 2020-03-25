require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
        erb :super_hero
    end

    post '/teams' do
        # binding.pry
        @team_name = params["team"]["name"]
        @team_motto = params["team"]["motto"]
        
        @first_hero_name = params["team"]["members"][0]["name"]
        @first_hero_power = params["team"]["members"][0]["power"]
        @first_hero_bio = params["team"]["members"][0]["bio"]

        @second_hero_name = params["team"]["members"][0]["name"]
        @second_hero_power = params["team"]["members"][0]["power"]
        @second_hero_bio = params["team"]["members"][0]["bio"]

        @third_hero_name = params["team"]["members"][0]["name"]
        @third_hero_power = params["team"]["members"][0]["power"]
        @third_hero_bio = params["team"]["members"][0]["bio"]

        erb :team
    end


end
 