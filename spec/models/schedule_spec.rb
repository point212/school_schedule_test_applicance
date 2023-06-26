require 'rails_helper'

RSpec.describe Schedule, type: :model do
  let(:student) { create(:student) }
  let(:section) { create(:section) }

  context 'when no other sections scheduled' do
    it '' do
      schedule = create(:schedule, student: student, section: section)
      expect(schedule).to be_valid
    end
  end
end
