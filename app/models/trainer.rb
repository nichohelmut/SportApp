class Trainer < ApplicationRecord
  belongs_to :users
  has_many :customers, through: :requests
  has_many :requests

end
