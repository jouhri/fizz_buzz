require 'sinatra'
require './fizz_buzz.rb'

get '/' do 
  erb :index
end

post '/' do 
  @result = FizzBuzz::inverse params[:content].split(", ")
  p @result
  if @result == []
    @word_result = "impossible"
  else
    @word_result = FizzBuzz::normal @result
  end
  erb :result
end
