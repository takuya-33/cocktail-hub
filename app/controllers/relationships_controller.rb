class RelationshipsController < ApplicationController
  before_action :authenticate
  before_action :set_user

  def create
    following = current_user.follow(@user)
    following.save
  end

  def destroy
    following = current_user.unfollow(@user)
    following.destroy
  end

  private

  def set_user
    @user = User.find(params[:relationship][:follow_id])
  end
end
