class ToppagesController < ApplicationController
  def index
    if logged_in?
      # form_with用
      @micropost = current_user.microposts.build 
      @microposts = current_user.microposts.order(id: :desc).page(params[:page])
    end
  end
end
