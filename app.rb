require_relative 'config/environment'
require 'pry'

class App < Sinatra::Base

  get '/reversename/:name' do
    @name = params[:name]
    "#{@name.reverse}"
  end

  get '/square/:number' do
    @number = params[:number.to_i]
    "#{Math.sqrt(@number).to_s}"
  end

  get '/say/:number/:phrase' do
    @phrase = params[:phrase]
    #@phrase << (" ")
    @number = params[:number].to_i
    #full_phrase = @phrase * @number
    full_phrase.each {|p| puts "#{@phrase}" * @number}
  end

    get '/say/:word1/:word2/:word3/:word4/:word5' do

    end

    get '/operation/:number1/:number2' do
      
    end


end