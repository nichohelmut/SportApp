class Sportler < ApplicationRecord
  belongs_to :sportlerpoly, polymorphic: true
  belongs_to :sport
end
