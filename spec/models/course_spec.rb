require 'rails_helper'

RSpec.describe Course, type: :model do
  let(:course) { create :course, name: 'Math', description: 'I love maths' }
  let(:student) { create :student, name: 'Lucas', register_number: '123123' }

  describe 'creation' do
    it 'succeeds with all fields' do
      expect(course).to be_valid
    end
  end

  describe 'adding attributes' do
    it 'succeeds adding a student' do
      course.students << student

      expect(course.students.size).to eql 1
      expect(course.students).to include student
    end

    it 'should have a classroom' do
      course.students << student

      expect(course.classrooms.size).to eql 1
    end
  end

  it { should have_many(:classrooms) }
  it { should have_many(:students).through(:classrooms) }
end
