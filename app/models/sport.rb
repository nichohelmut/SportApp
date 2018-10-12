class Sport < ApplicationRecord
  has_many :sportlers
  has_many :users, through: :sportlers
end
