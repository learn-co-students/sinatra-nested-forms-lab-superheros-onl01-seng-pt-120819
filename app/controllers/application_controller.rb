require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
        erb :super_hero
    end

    post '/teams' do
        @team_name = params[:team][:name]
        @team_motto = params[:team][:motto]
        @hero_name = [] #create empty array @hero_name
        @hero_power = [] #create empty array @hero_power
        @hero_bio = [] #create empty array @hero_bio
        @team_members = params[:team][:members]

        @team_members.each do |hero|
            @hero_name << hero[:name] #push into empty array @hero_name
            @hero_power << hero[:power] #push into empty array @hero_power
            @hero_bio << hero[:bio] #push into empty array @hero_bio
        end

        erb :team
    end
end
