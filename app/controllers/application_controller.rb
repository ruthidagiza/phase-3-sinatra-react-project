class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'

  # Add your routes here
  get "/articles" do
    articles=Article.all
    articles.to_json
  end
  post "/articles" do
  article=Article.create(
    name:params[:name],
    photo_url:params[:photo_url],
    nationality:params[:nationality]
  )
  article.to_json
  end
  patch "/article/:id" do
    article=Article.find(params[:id])
    article.update(
    name:params[:name],
    photo_url:params[:photo_url],
    nationality:params[:nationality]
  )
  article.to_json
  end
  delete "/article/:id" do
  article=Article.find(params[:id])
  article.destroy
  article.to_json
  end

end

require './models'