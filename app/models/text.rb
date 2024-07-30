class Text < ApplicationRecord
  belongs_to :article
  before_create :set_position
end

def set_position 
  max_position = Text.where(article_id: article_id).maximum(:position) || 0
  self.position = max_position + 1
end
