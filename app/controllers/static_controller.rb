class StaticController < ApplicationController
  def home
    @blogs = Post.all
  end

  def about
  end

  def contact
  end
end
