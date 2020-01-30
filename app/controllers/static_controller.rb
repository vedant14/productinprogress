class StaticController < ApplicationController
  def home
  	if current_user.present?
      @posts = Post.published_by_order.limit(3)
    else
      @posts = Post.published_by_order.published.limit(3)
    end
    @topics = Topic.all
  end

  def about
  end

  def contact
  end
end
