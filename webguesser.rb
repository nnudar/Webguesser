require 'sinatra'
require 'sinatra/reloader'

NUMBER = (1 + rand(99)).to_i

get "/" do
    guess = params["guess"] 
    message = guessing(guess)

	erb :index, :locals => {:number => NUMBER, 
							:guess => guess, 
							:message => message}	

end

 def guessing(guess)
	    if guess.to_i > NUMBER
	    	"Your guess is too high."
	    elsif guess.to_i < NUMBER
	    	"Your guess is too low."
	    else guess.to_i == NUMBER
	    	"Congratulations, you've won!"
	   	end
 end 
