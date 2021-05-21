class Message < ApplicationRecord
  belongs_to :user
  belongs_to :room
  has_one_attached :image
  validates :content, presence: true, unless: :was_at?


  def was_at?
    self.image.attachd?
  end
end
