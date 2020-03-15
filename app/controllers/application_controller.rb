require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :super_hero
    end

    post '/teams' do
      @team = Team.new(params[:team][:name], params[:team][:motto])
      params[:team][:members].each do |details|
        Member.new(details[:name], details[:power], details[:bio])
      end
      @members = Member.all
      erb :team
    end
end
