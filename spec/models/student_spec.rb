require 'rails_helper'

RSpec.describe Student, type: :model do
  describe 'creation' do
    it 'succeeds with all fields' do
      expect(Student.new(name: 'Lucas', register_number: '123123')).to be_valid
    end
  end
end
