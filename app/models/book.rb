class Book < ApplicationRecord
  validates :title, presence: true, allow_blank: false
  validates :body, presence: true, allow_blank: false, length: { maximum: 200 }
  belongs_to :user
end
