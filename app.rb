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
answer=x/y
response ={
'answer'=>answer
'string'=>x+"/"+y+"="+answer
'error'=>true
}

JSON[response]
end