class Trainer < ApplicationRecord
  belongs_to :user
  has_many :customers, through: :requests
  has_many :requests

end
