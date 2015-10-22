class V1::PostsController < ApplicationController
  before_action :set_post, only: [:update, :destroy]

  # GET /posts
  def index
    @posts = Post.all.includes(:user, :endorsements, :advices)

    render json: @posts
  end

  # GET /posts/1
  def show

    @post = Post.includes(:user).find(params[:id])

    render json: @post
  end

  # POST /posts
  def create
    @post = Post.new(post_params)

    if @post.save
      render json: @post, status: :created, location: @post
    else
      render json: @post.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /posts/1
  def update
    @post = Post.find(params[:id])

    if @post.update(post_params)
      head :no_content
    else
      render json: @post.errors, status: :unprocessable_entity
    end
  end

  # DELETE /posts/1
  def destroy
    @post.destroy

    head :no_content
  end

  # GET /popular
  # Most Endorsements
  def popular
    @posts = Post.all.includes(:user, :endorsements, :advices).limit(15).sort_by {|x| x.endorsements.length}.reverse!

    render json: @posts
  end

  # GET /newest
  def newest
    @posts = Post.all.includes(:user, :endorsements, :advices).where(created_at: Time.zone.now.all_month).limit(15).sort_by(&:created_at).reverse!

    render json: @posts
  end

  # GET /hot
  def hot
    @posts = Post.all.where(created_at: Time.zone.now.all_week).includes(:user, :endorsements, :advices).limit(15).sort_by {|x| x.endorsements.length}.reverse!

    render json: @posts
  end

  def addResponse (var1)
    endorsement = var1;
    byebug;
  end

  private

    def set_post
      @post = Post.find(params[:id])
    end

    def post_params
      params.require(:post).permit(:title, :body, :published)
    end
end
