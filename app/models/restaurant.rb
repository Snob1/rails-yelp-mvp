class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates :address, :name, :phone_number, presence: true
  validates :category, inclusion: { in: ["chinese", "italian", "japanese", "french", "belgian"], allow_nil: false}
  # validates :phone_number, format: { with: }
end
