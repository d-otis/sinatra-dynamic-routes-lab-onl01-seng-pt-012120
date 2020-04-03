require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    @name = params[:name].reverse
    "#{@name}"
  end

  get '/square/:num' do
    @num = params[:num].to_i
    "#{(@num**2).to_s}"
  end

  get '/say/:number/:phrase' do
    @num = params[:number].to_i
    @phrase = params[:phrase]
    arr = []
    @num.times do
      arr << @phrase
    end
    "#{arr.join(" ")}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5'

end
