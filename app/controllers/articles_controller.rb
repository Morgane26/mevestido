class ArticlesController < ApplicationController
  def index
    @article = Article.all
  end

  def new
    @article = Article.new

    @wearable_types = ["Top", "Bottom", "Coat", "Shoe", "Dress"]

    @tops = Top.all
    @bottoms = Bottom.all
    @dresses = Dress.all
    @coats = Coat.all
    @shoes = Shoe.all

    @colors = Color.all

    @js_colors = {}
    @colors.each do |color|
      @js_colors[color.id] = color.hex
    end

    @js_images = {}
    @wearable_types.each do |type|
      @js_images[type] = type.constantize.images
    end
  end

  def create
    @article = Article.new(article_params)

    wearable = wearable_type.find(wearable_id)
    @article.wearable = wearable
    @article.user = current_user
    if @article.save
      redirect_to new_article_path, notice: "Article added to your dressing 🤭"
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
