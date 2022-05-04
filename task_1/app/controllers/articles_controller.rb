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
    # Next line of code we know will take some time to process
    # In real life this could be a call for example to generate a report, perform a complex SQL query etc.
    # For the sake of testing the method contains only sleep(20)
    ReportGenerateJob.perform_later(article_params)
    render :text, "Article will be created soon......."
  end

  private

  def article_params
    params.require(:article).permit(:title, :body)
  end
end
