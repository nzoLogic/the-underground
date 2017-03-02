module PostHelper
  def up_vote_moment(post)
    post.upvote_by current_user
  end
end
