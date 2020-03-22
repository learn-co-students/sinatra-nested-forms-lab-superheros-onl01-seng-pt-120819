require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/'do 
        erb :super_hero
    end

    post '/teams' do 
        @team = Team.new(params[:team])
        members = params[:team][:members]
        # binding.pry
        members.each do |member_info| 
            SuperHero.new(member_info)
            # binding.pry
        end 
        @heroes = SuperHero.all
        erb :team
    end
end
