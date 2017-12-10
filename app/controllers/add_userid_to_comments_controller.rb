class AddUseridToCommentsController < ApplicationController
  before_action :set_add_userid_to_comment, only: [:show, :edit, :update, :destroy]

  # GET /add_userid_to_comments
  # GET /add_userid_to_comments.json
  def index
    @add_userid_to_comments = AddUseridToComment.all
  end

  # GET /add_userid_to_comments/1
  # GET /add_userid_to_comments/1.json
  def show
  end

  # GET /add_userid_to_comments/new
  def new
    @add_userid_to_comment = AddUseridToComment.new
  end

  # GET /add_userid_to_comments/1/edit
  def edit
  end

  # POST /add_userid_to_comments
  # POST /add_userid_to_comments.json
  def create
    @add_userid_to_comment = AddUseridToComment.new(add_userid_to_comment_params)

    respond_to do |format|
      if @add_userid_to_comment.save
        format.html { redirect_to @add_userid_to_comment, notice: 'Add userid to comment was successfully created.' }
        format.json { render :show, status: :created, location: @add_userid_to_comment }
      else
        format.html { render :new }
        format.json { render json: @add_userid_to_comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /add_userid_to_comments/1
  # PATCH/PUT /add_userid_to_comments/1.json
  def update
    respond_to do |format|
      if @add_userid_to_comment.update(add_userid_to_comment_params)
        format.html { redirect_to @add_userid_to_comment, notice: 'Add userid to comment was successfully updated.' }
        format.json { render :show, status: :ok, location: @add_userid_to_comment }
      else
        format.html { render :edit }
        format.json { render json: @add_userid_to_comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /add_userid_to_comments/1
  # DELETE /add_userid_to_comments/1.json
  def destroy
    @add_userid_to_comment.destroy
    respond_to do |format|
      format.html { redirect_to add_userid_to_comments_url, notice: 'Add userid to comment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_add_userid_to_comment
      @add_userid_to_comment = AddUseridToComment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def add_userid_to_comment_params
      params.require(:add_userid_to_comment).permit(:user_id)
    end
end
