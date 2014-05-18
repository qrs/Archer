require 'rubygems'
require 'sinatra'
require 'sass'
require 'compass'

get '/' do
  erb :home
end

not_found do
	erb :not_found
end

# get 'css/style.css' do
#   scss :styles
# end
