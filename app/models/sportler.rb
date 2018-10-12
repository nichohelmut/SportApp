class Sportler < ApplicationRecord
  belongs_to :user
  has_many :sports
end
