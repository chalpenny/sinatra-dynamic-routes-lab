require_relative 'config/environment'
require 'pry'

class App < Sinatra::Base

  get '/reversename/:name' do
    erb :reversename
  end

  get '/square/:number' do
      erb :square
  end

  get '/say/:number/:phrase' do
      erb :sayphrase
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
      erb :saywords
  end

  get '/operation/:number1/:number2' do
      #erb :operation
      # @number1 = params[:number1].to_i
      # @number2 = params[:number2].to_i 

      # answer = ' '

      # if params[:operation] == "add" 
      #   answer = (@number1 + @number2).to_s 
      #   elsif params[:operation] == "subtract"
      #     (@number1 - @number2).to_s 
      #   elsif params[:operation] == "multiply" 
      #     (@number1 * @number2).to_s 
      #   else params[:operation] == "divide" 
      #     (@number1 / @number2).to_s    
      # end 
      number1 = params[:number1].to_i
      number2 = params[:number2].to_i
  
      answer = 'Unable to perform this operation'
  
      case params[:operation]
      when 'add'
        answer = (number1 + number2).to_s
      when 'subtract'
        answer = (number1 - number2).to_s
      when 'multiply'
        answer = (number1 * number2).to_s
      when 'divide'
        answer = (number1 / number2).to_s
      end
    end


end