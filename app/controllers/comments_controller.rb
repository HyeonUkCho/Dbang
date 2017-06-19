class CommentsController < ApplicationController
    def create
        if !current_user.nil?
            @house = House.find(params[:house_id])
            @comment = @house.comments.new
            @comment.commenter = current_user.name
            @comment.user_id = current_user.id
            @comment.body = params[:comment][:body]
            @comment.save
            redirect_to house_path(@house)
        else
           @house = House.find(params[:house_id])
           flash[:notice_login] = "로그인을 하셔야 댓글을 입력이 가능합니다."
           redirect_to house_path(@house)
        end
    end
    
    def destroy
        @house = House.find(params[:house_id])
        @comment = @house.comments.find(params[:id])
        @comment.destroy
        redirect_to house_path(@house)
    end
    
    
end
