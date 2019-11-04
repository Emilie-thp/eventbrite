class User < ApplicationRecord

	validates :first_name, presence: true
  validates :last_name, presence: true
  validates :description, presence: true, length: { minimum: 10 }

  has_many :attendances 
  has_many :events, through :attendances
  has_many :organisers, foreign_key: 'admin_id', class_name: "Event"

  #to make a difference between the users who organise events and the users who participate only
	has_many :organisers, foreign_key: 'admin_id', class_name: "Event"

end
