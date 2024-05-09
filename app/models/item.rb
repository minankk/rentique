class Item < ApplicationRecord
  belongs_to :user
  has_many :bookings

  include PgSearch::Model

  pg_search_scope :search_by_description_and_category,
  against: [ :description, :category ],
  using: {
    tsearch: { prefix: true }
  }
end
