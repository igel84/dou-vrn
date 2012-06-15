class ArticlesController < ApplicationController
  
  def index
    @article = Article.find 1
    render action:'show'
  end

  def show
    @article = Article.find(params[:id])
  end
end
