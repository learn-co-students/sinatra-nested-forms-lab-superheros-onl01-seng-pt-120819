require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
        erb :super_hero
    end

    post '/teams' do
        @team_name = params["team"]["name"]
        @team_motto = params["team"]["motto"]

        @first_hero_name = params["team"]["members"][0]["name"]
        @first_hero_power = params["team"]["members"][0]["power"]
        @first_hero_bio = params["team"]["members"][0]["bio"]

        @second_hero_name = params["team"]["members"][1]["name"]
        @second_hero_power = params["team"]["members"][1]["power"]
        @second_hero_bio = params["team"]["members"][1]["bio"]

        @third_hero_name = params["team"]["members"][2]["name"]
        @third_hero_power = params["team"]["members"][2]["power"]
        @third_hero_bio = params["team"]["members"][2]["bio"]
        # binding.pry

        erb :team
    end


end
 