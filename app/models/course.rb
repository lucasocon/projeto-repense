# Course class
class Course < ActiveRecord::Base
  has_many :classrooms
  has_many :students, through: :classrooms

  validates_presence_of :name, :description, :status
  validates :status, numericality: { only_integer: true }
end
