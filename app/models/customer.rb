class Customer < ApplicationRecord
  validates :full_name, presence: true

  belongs_to :province # The customers table has a province_id FK.
end
