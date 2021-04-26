require 'rubygems'
require 'sinatra'
require 'sinatra/reloader'
require 'sinatra/activerecord'
require 'sqlite3'

before do 
  @posts = Post.order "created_at DESC"
end

set :database, {adapter: 'sqlite3', database:'blok.db' }

class Post < ActiveRecord::Base
	validates :name, presence:true, length: {minimum: 2 }
end

class Comments < ActiveRecord::Base
        validates :name, presence:true, length: {minimum: 2} 
end



get '/' do
  
	erb :index
end


get '/' do

  erb :new
end

post '/new' do
  @p = Post.new params[:post]
  @p.save
        
          if @p.save
            @posted = "Запощщино"
            erb :index
          else
            @error = @p.errors.full_messages.first
            erb :new
          end
          
	
	end
