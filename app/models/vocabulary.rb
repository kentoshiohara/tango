class Vocabulary < ApplicationRecord
  belongs_to :category

  validates :title, presence: true
  validates :meaning, presence: true
end
