class ArticlesController < ApplicationController

def index
  @article = Article.all
end




end
