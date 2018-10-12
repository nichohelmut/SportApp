class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one :trainer
  has_one :customer
  has_one :sportler
  has_many :sports, through: :sportler

  validates :role, presence: true, inclusion: { in: %w(customer trainer) }

end
