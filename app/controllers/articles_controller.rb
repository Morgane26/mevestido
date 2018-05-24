class ArticlesController < ApplicationController
  def index
    @article = Article.all
  end

  def new
    @article = Article.new
    @wearables = []
    @wearables << Top.all
    @wearables << Bottom.all
    @wearables << Dress.all
    @wearables << Coat.all
    @wearables << Shoe.all
    @wearables.flatten!
    @colors = []
    @colors = Color.all
  end

  def create
    @article = Article.new(article_params)
    @article.user = current_user
    if @article.save
      redirect_to home
    else
      render :new
    end
  end

private

   def article_params
      params.require(:article).permit(:season, :usage)
    end

end
