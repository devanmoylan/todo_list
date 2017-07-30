class List < ApplicationRecord
  has_many :items
  accepts_nested_attributes_for :items, :reject_if => proc { |attributes| attributes['name'].blank? }
  validates :name, presence: true
end
