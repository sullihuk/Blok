require 'rubygems'
require 'sinatra'
require 'sinatra/reloader'
require 'sinatra/activerecord'

set :database, {adapter: 'sqlite3', database:'blok.db' }

class Posts < ActiveRecord::Base
	validates :name, presence:true, length: {minimum: 2 }
end

class Comments < ActiveRecord::Base
end

get '/' do 
	erb :index
end

post '/' do

	



	
	end
