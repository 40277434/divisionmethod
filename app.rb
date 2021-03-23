#Ruby
require 'sinatra'
require 'json'
set :bind, '0.0.0.0'
set :port, 80

get '/' do
    x=params[:x]
    y=params[:y]
    response ={
    'answer'=>x/y
    }

    JSON[response]
end