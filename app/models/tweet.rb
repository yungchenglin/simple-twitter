class Tweet < ApplicationRecord
  validates_length_of :description, maximum: 140
  validates_presence_of :description

  belongs_to :user, optional: true
  has_many :replies, dependent: :delete_all

  has_many :likes, dependent: :destroy
  has_many :liked_users, through: :likes, source: :user

end
