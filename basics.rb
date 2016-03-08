require 'rubygems'
require 'sinatra'
require 'sinatra/contrib/all'

get "/" do
	"Hello, World!"
end
get "/hello/?:name?" do
	redirect to("/") if params[:name].nil?
	"Hello #{params[:name]}"
end
get "/hello/?:name" do
	"Hello my homie, #{params[:name].upcase}"
end

get "/reverse" do
	erb :form
end

post "/reverse" do
	params[:words].reverse
end

get "/about" do
	erb :about
end

not_found do
	halt 404, "dafuq you're trying to find?"
end
