class FavoritesController < ApplicationController

  def create
    post_iamge = PostImage.find(params[:post_iamge_id])
    favorite = current_user.favorites.new(post_iamge_id: post_iamge.id)
    favorite.save
    redirect_to post_iamge_path(post_iamge)
  end

  def destroy
    post_iamge = PostImage.find(params[:post_iamge_id])
    favorite = current_user.favorites.find_by(post_iamge_id: post_iamge.id)
    favorite.destroy
    redirect_to post_iamge(post_iamge)
  end

end