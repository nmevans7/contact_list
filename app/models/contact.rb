class Contact < ApplicationRecord
  # Associations
  #examples of 
  # belongs_to
  # has_many
  # has_one
  # has_many:through
  # has_one:through
  # dependent destroy, if parent is destroyed. If address then only country, contact stays
  
  has_one :address, dependent: :destroy
  

  # # Validations
  # confirmation
  #   helper two text field, make sure the values are the same 
  #   example password/password confirmation
  
  #   inclusion
  #   validates attribute that is in a given sets
  #   example
  #   validates :size, inclusion: {
  #     in: %w(small medium large),
  #     message: "%{value} is not a valid size"
  #   }

  # length
  #   makes sure it is a certain character size
  #   example
  #   class Person < ActiveRecord::Base
  #     validates :name, length: { minimum: 2 }
  #     validates :bio, length: { maximum: 500 }
  #     validates :password, length: { in: 6..20 }
  #     validates :registration_number, length: { is: 6 }
  #   end

  # numericality
  #   onlly allow numbers
  #   example
  #     class Player < ActiveRecord::Base
  #       validates :points, numericality: true
  #       validates :games_played, numericality: { only_integer: true }
  #       validates :golf_handicap, numericality: { 
  #         less_than_or_equal_to: 40.4, 
  #         greater_than_or_equal_to: 2 
  #       }
  #     end

  # presence
  #   not empty
  #   example
    validates :email, :first_name, :last_name, presence: true


  # uniqueness  
  #   attribute is unique before it is saved
  #   example
    validates :email, uniqueness: true
  # Class methods
  # instances methods
end
