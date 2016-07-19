class ArticlesController < ApplicationController
    def new
    end
    
    def index
        @articles = Article.all
    end
    
    def create
        
        # render plain: params[:article].inspect
        # @article = Article.new(params[:article])
        # permission for title and text, it is needed for rails
        # @article = Article.new(params.require(:article).permit(:title, :text))
        # @article.save
        # redirect_to @article
  
        @article = Article.new(article_params)
 
        @article.save
        redirect_to @article
    end
    
    def show
        @article = Article.find(params[:id])
    end
 
    private
        def article_params
           params.require(:article).permit(:title, :text)
        end
end




