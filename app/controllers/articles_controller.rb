class ArticlesController < ApplicationController

  def index
    @articles = Article.paginate(page: params[:page], per_page: 5)
  end

  def show
    @article = get_article
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    if @article.save
      redirect_to article_path(@article)
      flash[:notice] = "Article created"
    else
      render :new
    end
  end

  def edit
    @article = get_article
  end

  def update
    @article = get_article

    if @article.update(article_params)
      redirect_to article_path(@article)
    else
      render 'edit'
    end
  end

  def destroy
    @article = get_article
    @article.destroy

    redirect_to articles_path
  end

  private

  def article_params
    params.require(:article).permit(:title, :description)
  end

  def get_article
    Article.find(params[:id])
  end

end