require "sinatra"
require_relative "./counter"

class CounterApp < Sinatra::Base

  set :session_secret, "my session secret"

  get '/' do
    @counter = Counter.new
    erb :index
  end

  run! if app_file == $0
end
