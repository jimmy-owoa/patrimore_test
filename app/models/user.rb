class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, 
         :confirmable, :trackable

  has_many :user_searches, dependent: :destroy

  validates :name, presence: true
end