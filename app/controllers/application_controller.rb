
require_relative '../../config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end
  
  get '/' do 
    redirect to '/articles'
  end 
 
  get '/articles' do
    @articles = Article.all
    erb :'index'
  end
  
<<<<<<< HEAD
   get '/articles/new' do
=======
  get '/articles/new' do
>>>>>>> 2fb2ea7d636f21d645dd7aa7058cdd70f19682ba
    erb :'new'
  end
  
  post '/articles' do
    @article = Article.create(:title => params[:title], :content => params[:content])
    redirect to "/articles/#{@article.id}"
  end   
  
  get '/articles/:id' do 
    
    @article = Article.find(params[:id])
    erb :'show'
  end 
  
<<<<<<< HEAD
=======
  get '/articles/:id/edit' do 
    @article = Article.find_by_id(params[:id])
    erb :'edit'
  end   
  
>>>>>>> 2fb2ea7d636f21d645dd7aa7058cdd70f19682ba
  patch '/articles/:id' do 
    @article = Article.find_by_id(params[:id])
    @article.title = params[:title]
    @article.content = params[:content]
    @article.save
  
    redirect to "/articles/#{@article.id}"
  end
  
<<<<<<< HEAD
  get '/articles/:id/edit' do 
    @article = Article.find_by_id(params[:id])
    erb :'edit'
  end   
  
  
  
=======
>>>>>>> 2fb2ea7d636f21d645dd7aa7058cdd70f19682ba
  delete '/articles/:id' do 
    @article = Article.find_by_id(params[:id])
    @article.destroy
    
    erb :'/articles'
  end 
<<<<<<< HEAD
  
 
=======
>>>>>>> 2fb2ea7d636f21d645dd7aa7058cdd70f19682ba
end
