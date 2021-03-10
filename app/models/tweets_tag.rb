class TweetsTag

  include ActiveModel::Model
  attr_accessor :title, :place, :text, :user_id, :name, :image

  with_options presence: true do
    validates :title
    validates :text
    validates :user_id
  end

  def save
    tweet = Tweet.create(title: title, text: text, place: place, user_id: user_id, image: image)
    tag = Tag.create(name: name)

    TweetTagRelation.create(tweet_id: tweet.id, tag_id: tag.id)
  end
end
