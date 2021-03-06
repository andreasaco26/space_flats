class Flat < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_many :users
  has_many_attached :photos
  include PgSearch::Model
  pg_search_scope :search_by_address_and_description,
    against: [ :address, :description ],
    using: {
      tsearch: { prefix: true } # <-- now `superman batm` will return something!
    }


end
