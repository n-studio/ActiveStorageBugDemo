class Artwork < ApplicationRecord
  has_one_attached :file

  belongs_to :artist, optional: true

  validates :artist, presence: true
end
