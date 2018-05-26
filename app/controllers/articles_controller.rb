class ArticlesController < ApplicationController
  def index
    @article = Article.all
  end

  def new
    @article = Article.new

    @wearable_types = ["Top", "Bottom", "Coat", "Shoe", "Dress"]


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
    wearable = wearable_type.find(wearable_id)
    @article.wearable = wearable
    @article.user = current_user
    if @article.save
      redirect_to new_article_path, notice: "Article successfully created"
    else
      render :new
    end
  end

  private

  def article_params
    params.require(:article).permit(:season, :usage, :color_id)
  end

  def wearable_type
    params[:article][:wearable_type].constantize
  end

  def wearable_id
    params[:article][:wearable_id]
  end
end
