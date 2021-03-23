#Ruby
require 'sinatra'
require 'json'
set :bind, '0.0.0.0'
set :port, 80

get '/' do
x=params[:x]
x=x.to_i
y=params[:y]
y=y.to_i
response ={
'answer'=>x/y
}

JSON[response]
end