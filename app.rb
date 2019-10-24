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

  get '/:operation/:number1/:number2' do
      erb :operation
    
      # number1 = params[:number1].to_i
      # number2 = params[:number2].to_i
  
      # answer = 'Unable to perform this operation'
  
      # case params[:operation]
      # when 'add'
      #   answer = (number1 + number2).to_s
      # when 'subtract'
      #   answer = (number1 - number2).to_s
      # when 'multiply'
      #   answer = (number1 * number2).to_s
      # when 'divide'
      #   answer = (number1 / number2).to_s
      # end
    end


end

   # <% if params[:operation] == 'add' %>
 # <% elsif params[:operation] == "subtract" %>
    #     <p> (@number1 - @number2).to_s </p>
    # <% elsif params[:operation] == "multiply" %>
    #     <p> (@number1 * @number2).to_s </p>
    # <% else params[:operation] == "divide" %>
    #     <p> (@number1 / @number2).to_s </p> 
   # <% else puts "bingo" %>
    #<% end %>