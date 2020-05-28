class Address < ApplicationRecord
  belongs_to :contact
  has_one :country, dependent: :destroy

  validates :state, :city, :zip, presence:true
  validates :zip, nuericality: true


end
