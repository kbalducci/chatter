class User < ActiveRecord::Base
  has_many :chats
  validates_presence_of :first_name, :last_name, :profile_name, :location, :photo_url
  validates_uniqueness_of :profile_name

  scope :by_profile_name, -> { order(user: :asc) }

end
