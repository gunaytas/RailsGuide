class Article < ApplicationRecord
  include Visible

  has_many :comments, dependent: :destroy
  has_many :texts, dependent: :destroy

  validates :title, presence: true
  validates :body, presence: true, length: { minimum: 10 }
end
