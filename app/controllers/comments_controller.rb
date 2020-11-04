class CommentsController < ApplicationController
  skip_before_action :authorize, only: :create
  def create
      @menue = Menue.find(params[:menue_id])
      @comment = @menue.comments.create(comment_params)
      redirect_to menue_path(@menue)
  end
    
  def destroy
      @menue = Menue.find(params[:menue_id])
      @comment = @menue.comments.find(params[:id])
      @comment.destroy
      redirect_to menue_path(@menue)
  end

    private
      def comment_params
        params.require(:comment).permit(:commenter, :body)
      end
end
