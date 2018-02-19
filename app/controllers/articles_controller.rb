class ArticlesController < ApplicationController
  def index
    @articles = Article.all
t=Time.now
  end
 
  def show
    @article = Article.find(params[:id])
  end
 
  def new
    @article = Article.new
   
  end
 
  def edit
    @article = Article.find(params[:id])
  end
 
  def create
    @article = Article.new(article_params)
 
    if @article.save
      redirect_to @article
    else
      render 'new'
    end
  end
 
  def assign_student
    @article = Article.find(params[:id])
    @article.articlestud_id = params[:article][:articlestud_id]
   if params[:article][:articlestud_id].present?
   @article.borrow_date=Time.now
   @article.return_date=Time.now+864000
   else
     @article.borrow_date=nil
   @article.return_date=nil
   end
   if @article.save
      flash[:notice]  = "successfully updated"
   else
      flash[:error] = "Error: #{@article.errors.messages}"
   end
    redirect_to articles_path
  
 end
def update
    @article = Article.find(params[:id])
    if @article.update(article_params)
      redirect_to @article
    else
      render 'edit'
    end
  end
 
   private
    def article_params
      params.require(:article).permit(:title, :text, :discp, :articlestud_id)
    end
end