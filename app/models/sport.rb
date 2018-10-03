class Sport < ApplicationRecord
  has_many :sportlers, as: :sportlerpoly
  has_many :customers, through: :sportlers, source: :sportlerpoly, source_type: 'Customer'
  has_many :trainers, through: :sportlers, source: :sportlerpoly, source_type: 'Trainer'
end
