class StaticController < ApplicationController
  def home
    @posts = Post.published_by_order.limit(3)
    @topics = Topic.all
  end

  def about
  end

  def contact
  end
end
