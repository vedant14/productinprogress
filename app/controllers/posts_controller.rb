class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy, :review, :publish]
  access all: [:index, :show], user: :all

  # GET /posts
  def index
    if current_user.present?
      @posts = Post.published_by_order
    else
      @posts = Post.published_by_order.published
    end
    @topics = Topic.all
  end

  # GET /posts/1
  def show
    @topics = Topic.all
  end

  # GET /posts/new
  def new
    @post = Post.new
    @post.topic_id = 1 
  end

  # GET /posts/1/edit
  def edit
  end

  # POST /posts
  def create
    @post = Post.new(post_params)

    if @post.save
      redirect_to @post, notice: 'Post was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /posts/1
  def update
    if @post.update(post_params)
      redirect_to @post, notice: 'Post was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /posts/1
  def destroy
    @post.destroy
    redirect_to posts_url, notice: 'Post was successfully destroyed.'
  end


  def review
    @post.review!
    redirect_to request.referrer 
  end

  def publish
    @post.publish!
    redirect_to request.referrer 
  end



  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post
      @post = Post.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def post_params
      params.require(:post).permit(:title, :body, :status, :topic_id)
    end
end
