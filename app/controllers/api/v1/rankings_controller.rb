class Api::V1::RankingsController < ActionController::API
  def index
    @posts = Post.includes(:liked_users).sort { |a, b| b.liked_users.size <=> a.liked_users.size }

    render json: @posts.first(3).map { |post|
      post.as_json(include: :likes).merge({ image: url_for(post.image) })
    }
  end
end
