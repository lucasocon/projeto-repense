# Student class
class Student < ActiveRecord::Base
  has_many :classrooms
  has_many :courses, through: :classrooms

  validates_presence_of :name, :register_number, :status
  validates :status, numericality: { only_integer: true }
end
