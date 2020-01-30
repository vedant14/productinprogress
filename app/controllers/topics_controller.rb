class TopicsController < ApplicationController


  def index
    @topics = Topic.all
  end

  def show
    @topics = Topic.all
    @topic = Topic.find(params[:id])
    if current_user.present?
  	  @posts = @topic.posts.published_by_order
    else
      @posts = @topic.posts.published_by_order.published
    end
  end
end
