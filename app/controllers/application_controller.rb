require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    enable :sessions
    set :session_secret, "secret"
    set :views, 'app/views'
    register Sinatra::Flash
  end

  get '/' do
    @activities = Activity.all
    erb :'/activities/index'
  end

  helpers do
    def logged_in?
      !!session[:user_id]
    end

    def current_user
      User.find(session[:user_id])
    end

    def blank_params?(hash_key)
      params["#{hash_key}"].values.any?{|param| param.length <= 0 || param.nil?}
    end
  end
end
