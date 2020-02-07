class CommentsController < ApplicationController

  def new
  end

  def update
    puts "PARAMSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS"
    puts params
    @comment = Comment.find(params[:id])
    @comment.like += 1
    @comment.save
    redirect_to bookcopy_path(BookCopy.find(params[:bookcopy_id]))
  end

  def create
      @comment = Comment.new(comment_params)
      @comment.user_id = current_user.id
      @book = BookCopy.find(params[:bookcopy_id])
      @post = Post.find(params[:post_id])
      @comment.post = @post

      if @comment.save
          flash[:success] = "Ton commentaire a bien été posté"
          redirect_to bookcopy_path(BookCopy.find(params[:bookcopy_id]))
      else
          puts @comment.errors
          flash[:error] = "Désolé, il y a eu une erreur"
          redirect_to bookcopy_path(BookCopy.find(params[:bookcopy_id]))
      end
  end

  def destroy
    puts params
    @comment = Comment.find(params[:id])
    @comment.content = "deleted"
    @comment.like = 0
    @comment.status = 0
    @comment.save
    
    if @comment.save
      flash[:success] = "Ton commentaire a bien été posté"
      redirect_to bookcopy_path(BookCopy.find(params[:bookcopy_id]))
    else
      puts @comment.errors
      flash[:error] = "Désolé, il y a eu une erreur"
      redirect_to bookcopy_path(BookCopy.find(params[:bookcopy_id]))
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:content)
  end
  
end