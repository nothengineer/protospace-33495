class Prototype < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :destroy
  has_one_attached :image
  
  validates :date, presence: true 
  validates :thema, presence: true
  validates :text1, presence: true 
  validates :text2, presence: true
  validates :text3, presence: true
  validates :text4, presence: true
  validates :text5, presence: true
end
