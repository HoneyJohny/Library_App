class ArticlestudsController < ApplicationController
  def index
    @articlestuds = Articlestud.all
  end
 
  def show
    @articlestud = Articlestud.find(params[:id])
  end
 
  def new
    @articlestud = Articlestud.new
  end
 
  def edit
    @articlestud = Articlestud.find(params[:id])
  end
 
  def create
    @articlestud = Articlestud.new(articlestud_params)
 
    if @articlestud.save
      redirect_to @articlestud
    else
      render 'new'
    end
  end
 
  def update
    @articlestud = Articlestud.find(params[:id])
 
    if @articlestud.update(articlestud_params)
      redirect_to @articlestud
    else
      render 'edit'
    end
  end
   private
    def articlestud_params
      params.require(:articlestud).permit(:title, :text, :discp)
    end
end