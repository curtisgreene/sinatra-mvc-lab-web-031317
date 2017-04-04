require_relative 'config/environment'
require 'pry'
class App < Sinatra::Base

  get "/" do
    erb :user_input
  end

  post '/piglatinize' do
    new_phrase = PigLatinizer.new
    @translated_phrase = new_phrase.to_pig_latin(params[:user_phrase])
    erb :result
  end


end
