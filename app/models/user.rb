class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :chats
  validates_presence_of :first_name, :last_name, :profile_name, :location, :photo_url
  validates_uniqueness_of :profile_name

  scope :by_profile_name, -> { order(user: :asc) }
end
