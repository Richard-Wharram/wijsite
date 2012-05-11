class HomeController < ApplicationController
  def index
    @news_items = NewsItem.order("timestamp DESC").all(:limit => 3)
    @posts = Post.order("id DESC").all(:limit => 3)
    respond_to do |format|
      format.html # index.html.erb
    end
  end
end
