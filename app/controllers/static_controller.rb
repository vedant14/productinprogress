class StaticController < ApplicationController
  def home
    @blogs = Blog.all
  end

  def about
  end

  def contact
  end
end
