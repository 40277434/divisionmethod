#Ruby
require 'sinatra'
require 'json'
set :bind, '0.0.0.0'
set :port, 80

get '/' do
x=params[:x]
x_i=x.to_i
y=params[:y]
y_i=y.to_i
answer=x_i/y_i
response ={
'answer'=>answer,
'string'=>x+"/"+y+"="+answer.to_s,
'error'=>true
}

JSON[response]
end