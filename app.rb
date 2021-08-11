require 'sinatra'
require './config'
require './lib/code_breaker_model'
enable :sessions

get '/' do
    session[:code_breaker_model]= CodeBreakerModel.new
    @mensaje_view = session[:code_breaker_model].mensaje[0]
    erb :greeting
end

post '/reiniciar' do
    session[:code_breaker_model].reiniciar_juego
    @guesses_controller = session[:code_breaker_model].resultado
    erb :juego
end

post '/jugar' do
    if params[:user_guess_name]
        session[:code_breaker_model].guess_number params[:user_guess_name]
    end
    @guesses_controller = session[:code_breaker_model].resultado
    erb :juego
end

get '/backdoor' do
    session[:code_breaker_model]= CodeBreakerModel.new
    session[:code_breaker_model].set_secret_number "4"
    @mensaje_view = session[:code_breaker_model].mensaje[0]
    erb :greeting
end