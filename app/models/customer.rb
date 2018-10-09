class Customer < ApplicationRecord
  belongs_to :user
  has_many :trainers, through: :requests
  has_many :requests

  validates :email, format: { with: /\A.*@.*\.com\z/ }, uniqueness: true


end
