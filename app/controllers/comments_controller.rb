class CommentsController < ApplicationController
    def index
        @comments = Comment.order(id: :desc).all
    end
    
    def search
        @comments = Comment.where('content LIKE ?', "%#{params[:query]}%")
        render json: @comments
    end
    
    def new
    end
    
    def create
        Comment.create(content: params[:content])
        redirect_to root_path
    end
end
