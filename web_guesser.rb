require 'sinatra'
require 'sinatra/reloader'

x = rand(101)

get '/' do
  guess = params["guess"]
  message = check_guess(guess)
  erb :index
end

def check_guess(guess)
  if guess.to_i > x then "too high"
  elsif guess.to_i == x then "good job"
  else then "too low"
  end
end
