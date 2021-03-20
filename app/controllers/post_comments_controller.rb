class PostCommentsController < ApplicationController

  def create
    cooking = Cooking.find(params[:cooking_id])
    comment = PostComment.new(post_comment_params)
    comment.user_id = current_user.id
    comment.cooking_id = cooking.id
    comment.save
    redirect_to cooking_path(cooking.id)
  end

  def destroy
    PostComment.find_by(id: params[:id], cooking_id: params[:cooking_id]).destroy
    redirect_to cookings_path
  end

  private

  def post_comment_params
    params.require(:post_comment).permit(:comment)
  end

end
