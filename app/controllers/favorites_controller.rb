class FavoritesController < ApplicationController
  def create 
    post_image = PostImage.find(params[:post_image_id])
    favorite = Favorite.new ({user_id: current_user.id, post_image_id: post_image.id})
    favorite.save
    redirect_to post_image_path(post_image.id)
  end

  def destroy
    post_image = PostImage.find(params[:post_image_id])
    favorite = post_image.favorites.find_by(user_id: current_user.id)
    favorite.destroy
    redirect_to post_image_path(post_image.id)
  end
end

