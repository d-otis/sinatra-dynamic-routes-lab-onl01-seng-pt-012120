require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reverse/:name' do
    @name = params[:name].reverse
    "#{@name}"
  end

end
