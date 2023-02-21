class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.create(article_params)
    redirect_to task_path(@task) #how the hell does this line work?
  end

  private

  def article_params
  end
end
