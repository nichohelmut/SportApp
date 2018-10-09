class Sport < ApplicationRecord
  has_many :sportlers
  has_many :users, thorugh: :sportlers
end
