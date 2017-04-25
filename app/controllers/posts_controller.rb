class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]
  # before_action :set_topic, only: [:new, :edit, :create, :update, :destroy]


  # GET /posts
  # GET /posts.json
  def index
    @topic = Topic.friendly.find(params[:topic_id])
    @posts = @topic.posts
    # if params[:search]
    #   @posts = @topic.posts.search(params[:search]).order("created_at DESC")
    # else
    #   @posts = @topic.posts.order('created_at DESC')
    # end
    # @q = Post.ransack(params[:q])
    # @posts = @q.result(distinct: true)
  end

  # GET /posts/1
  # GET /posts/1.json
  def show
    @comment = Comment.new
    @comments = @post.comments
  end

  # GET /posts/new
  def new
    @post = Post.new
    @topic = Topic.friendly.find(params[:topic_id])
  end

  # GET /posts/1/edit
  def edit
    @topic = Topic.friendly.find(params[:topic_id])
  end

  # POST /posts
  # POST /posts.json
  def create
    @topic = Topic.friendly.find(params[:topic_id])
    @post = @topic.posts.new(post_params)
    @post.user_id = current_user.id
    @post.topic_id = @topic.id

    respond_to do |format|
      if @post.save
        format.html { redirect_to topic_posts_path(@topic), notice: 'Post was successfully created.' }
        format.json { render :show, status: :created, location: @post }
      else
        format.html { render :new }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /posts/1
  # PATCH/PUT /posts/1.json
  def update
    @topic = Topic.friendly.find(params[:topic_id])
    authorize @post

    respond_to do |format|
      if @post.update(post_params)
        format.html { redirect_to topic_post_path(@topic, @post), notice: 'Post was successfully updated.' }
        format.json { render :show, status: :ok, location: @post }
      else
        format.html { render :edit }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /posts/1
  # DELETE /posts/1.json
  def destroy
    @topic = Topic.friendly.find(params[:topic_id])
    authorize @post

    @post.destroy
    respond_to do |format|
      format.html { redirect_to topic_posts_path(@topic), notice: 'Post was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post
      @post = Post.friendly.find(params[:id])
      @topic = Topic.friendly.find(params[:topic_id])
    end


    # Never trust parameters from the scary internet, only allow the white list through.
    def post_params
      params.require(:post).permit(:title, :content, :user_id)
    end
end
