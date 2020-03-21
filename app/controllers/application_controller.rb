require 'pry'
require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do 
        erb :super_hero
    end

    post '/teams' do 
        @team = Team.new(params[:team])

        params[:team][:heroes].each do |details|
            Hero.new(details)
          end
          
          @heroes = Hero.all
          #binding.pry

        erb :team
    end

end
