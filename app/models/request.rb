class Request < ApplicationRecord
  belongs_to :customer
  belongs_to :trainer
end
