class Property < ApplicationRecord
  validates :name, presence: true
  validates :headline, presence: true
  validates :description, presence: true
  validates :city, presence: true
  validates :state, presence: true
  validates :country, presence: true
  validates :address_1, presence: true

  geocoded_by :address
  after_validation :geocode, if: -> { latitude.blank? && longitude.blank? }
  # after_validation :geocode, unless: ->(obj){ obj.latitude.present? and obj.present }

  def address
    [state, "AU"].compact.join(',')

    # return "19 Peachey Rd, Davoren Park SA 5113, Australia"
    # [address_1, address_2, city, state, country].compact.join(',')
    # [state, country].compact.join(', ')

  end
end