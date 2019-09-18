class Restaurant < ApplicationRecord
  validates :name, :address, :category, presence: true
  CATEGORY = %w(chinese italian japanese french belgian indian)
  validates :category, inclusion: { in: CATEGORY }

  has_many :reviews, :dependent => :destroy
end
