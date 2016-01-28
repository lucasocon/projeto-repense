require 'rails_helper'

RSpec.describe Student, type: :model do
  let(:student) { create :student, name: 'Lucas', register_number: '123123' }
  let(:course)  { create :course, name: 'Math', description: 'I love maths' }

  describe 'creation' do
    it 'succeeds with all fields' do
      expect(student).to be_valid
    end
  end

  describe 'adding attributes' do
    it 'succeeds adding a course' do
      student.courses << course

      expect(student.courses.size).to eql 1
      expect(student.courses).to include course
    end

    it 'should have a classroom' do
      student.courses << course

      expect(student.classrooms.size).to eql 1
    end
  end

  it { should have_many(:classrooms) }
  it { should have_many(:courses).through(:classrooms) }
end
