class TagsController < ApplicationController
  before_filter :require_login, only: [:destroy]

  def require_login
    unless current_user
      redirect_to login_path
      return false
    end
  end

  def index
    @tags = Tag.all
  end

  def show
    @tag = Tag.find(params[:id])
  end
end
