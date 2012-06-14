class ArticlesController < ApplicationController
  def show
    @article = Article.first
  end
end
