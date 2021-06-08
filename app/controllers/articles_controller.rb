class ArticlesController < ApplicationController
  before_action :set_article, only: [:show, :edit, :update, :destroy]

  def index
    @articles = Article.all

    @article = Article.new
  end

  def show
  end

  def new
    @restaurant = Article.new
  end

  def create
    article = Article.new(article_params)

    if article.save
      redirect_to article_path(article)
    else
      raise
    end
  end

  def edit
  end

  def update
    @rarticle.update(article_params)
    redirect_to article_path(@artcile)
  end

  def destroy
    @article.destroy
    redirect_to articles_path
  end

  private

  def set_article
    id = params[:id]
    @article = Article.find(id)
  end

  def article_params
    params.require(:article).permit(:title, :content)
  end

end

