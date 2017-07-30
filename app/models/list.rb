class List < ApplicationRecord
  has_many :items
  accepts_nested_attributes_for :items
  validates :name, presence: true

end
