require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get "/" do 
        erb :super_hero
    end 
    

    post "/teams" do 
        @team = Team.new(params[:team])
        
        params[:team][:members].each do |details|
          Member.new(details)
        end 
   
        @members = Member.all 
   
        erb :team
      end 
end
# post '/pirates' do
#     # binding.pry
#     @pirate = Pirate.new(params[:pirate])

#     params[:pirate][:ships].each do |details|
#       Ship.new(details)
#     end  
#     @ships = Ship.all

#     erb :'/pirates/show'
  