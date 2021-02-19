require "sinatra"
require_relative "./lib/counter"
require 'date'

class CounterApp < Sinatra::Base

  before do
    @counter = Counter.instance
  end

  get '/' do
    erb :index
  end

  post '/increment' do
    @counter.increment
    redirect '/'
  end

  post '/decrement' do
     @counter.decrement
     redirect '/'
  end

  post '/reset' do
    @counter.reset
    redirect '/'
  end

end


# Controller – receives input. Processes requests (.e.g. GET).
# Middleman between model and view. Passes data to the view.
# Template engine in the view then takes over.
