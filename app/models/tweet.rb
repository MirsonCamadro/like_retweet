class Tweet < ApplicationRecord
  belongs_to :user
  has_many :likes

  def add_like(user)
    Like.create(user: user, tweet: self)
  end

  def remove_like(user)
    Like.where(user: user, tweet: self).first.destroy
  end

  def origin_tweet
    Tweet.find(self.owner_id)
  end
end
