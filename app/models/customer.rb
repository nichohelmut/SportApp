class Customer < ApplicationRecord
  has_many :users
  has_many :sportlers, as: :sportlerpoly
  has_many :sports, through: :sportlers, source: :sportlerpoly, source_type: 'Sport'
  has_many :trainers, through: :users
  has_many :requests

  validates :email, format: { with: /\A.*@.*\.com\z/ }, uniqueness: true


end
