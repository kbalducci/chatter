class Chat < ActiveRecord::Base
  belongs_to :user
  validates_presence_of :message
  validates_length_of :message,  :within => 2..150
end
