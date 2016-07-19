class ArticlesController < ApplicationController
    # The reason why we added @article = Article.new in the ArticlesController
    # is that otherwise @article would be nil in our view, 
    # and calling @article.errors.any? would throw an error.
    def new
        @article = Article.new
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
 
        if @article.save
            redirect_to @article
        else
            # render method is used so that the @article object
            # is passed back to the new template when it is rendered
            render 'new'
        end
    end
    
    def show
        @article = Article.find(params[:id])
    end
 
    private
        def article_params
           params.require(:article).permit(:title, :text)
        end
end

