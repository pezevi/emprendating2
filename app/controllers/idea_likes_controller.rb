class IdeaLikesController < ApplicationController
  before_action :set_idea_like, only: [:show, :edit, :update, :destroy]

  # GET /idea_likes
  # GET /idea_likes.json
  def index
    @idea_likes = IdeaLike.all
  end

  # GET /idea_likes/1
  # GET /idea_likes/1.json
  def show

  end

  # GET /idea_likes/new
  def new
    @idea_like = IdeaLike.new
    # @idea_like.user = current_user
    # @idea_like.idea = idea_like_idea_id
  end

  # GET /idea_likes/1/edit
  def edit
  end

  # POST /idea_likes
  # POST /idea_likes.json
  def create

    @idea_like = IdeaLike.new(idea_like_params)
    @idea_like.user = current_user

    respond_to do |format|
      if @idea_like.save
        format.html { redirect_to @idea_like, notice: 'Idea like was successfully created.' }
        format.json { render :show, status: :created, location: @idea_like }
      else
        format.html { render :new }
        format.json { render json: @idea_like.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /idea_likes/1
  # PATCH/PUT /idea_likes/1.json
  def update
    respond_to do |format|
      if @idea_like.update(idea_like_params)
        format.html { redirect_to @idea_like, notice: 'Idea like was successfully updated.' }
        format.json { render :show, status: :ok, location: @idea_like }
      else
        format.html { render :edit }
        format.json { render json: @idea_like.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /idea_likes/1
  # DELETE /idea_likes/1.json
  def destroy
    @idea_like.destroy
    respond_to do |format|
      format.html { redirect_to idea_likes_url, notice: 'Idea like was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_idea_like
      @idea_like = IdeaLike.find(params[:id])


    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def idea_like_params
      params.require(:idea_like).permit(:idea_id, :user_id, :liked)
    end
end
