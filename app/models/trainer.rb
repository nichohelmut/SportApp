class Trainer < ApplicationRecord
  has_many :users
  has_many :customers, through: :users
  has_many :sportlers, as: :sportlerpoly
  has_many :sports, through: :sportlers, source: :sportlerpoly, source_type: 'Sport'
  has_many :requests

end
