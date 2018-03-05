class CommentsController < ApplicationController
	def create
		@post = Post.find(params[:post_id])
		@comment = Comment.new(comment_params)
		@comment.post = @post

		
			if @comment.save
				redirect_to @post, notice: 'Comentario creado'
			else
				redirect_to @post, alert: 'Error'
			end

		

	end

	private

	def comment_params
		params.require(:comment).permit(:content, :post_id)
	end
end
