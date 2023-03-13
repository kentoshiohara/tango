class Category < ApplicationRecord
  belongs_to :user
  has_many :vocabularies

  validates :title, presence: true, length: { maximum: 10 }
end
