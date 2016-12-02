class CommentController < ApplicationController

  def create
    @notion = Notion.find(params[:id])
    @comment = Comment.new(comment_params)
    @comment[:notion_id] = @notion.id

    respond_to do |format|
      if @comment.save
        format.html { redirect_to @notion, notice: 'Comment was successfully created.' }
        format.json { render :show, status: :created, location: @notion }
      else
        format.html { render :new }
        format.json { render json: @notion.errors, status: :unprocessable_entity }
      end
    end
  end

  def comment_params
    params.require(:comment).permit(:name, :birthday, :content)
  end
end
