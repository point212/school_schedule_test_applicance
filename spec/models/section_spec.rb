# == Schema Information
#
# Table name: sections
#
#  id                 :integer          not null, primary key
#  classroom          :string           not null
#  days_of_week       :string
#  duration           :integer          not null
#  start_time         :integer          not null
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  student_id         :integer          not null
#  teacher_subject_id :integer          not null
#
# Indexes
#
#  index_sections_on_student_id          (student_id)
#  index_sections_on_teacher_subject_id  (teacher_subject_id)
#
# Foreign Keys
#
#  student_id          (student_id => students.id)
#  teacher_subject_id  (teacher_subject_id => teacher_subjects.id)
#
require 'rails_helper'

RSpec.describe Section, type: :model do
  describe 'start_time' do
    let(:section) { build(:section, start_time_human: start_time_human, duration: 50) }

    context 'with right start_time_human' do
      let(:start_time_human) { '10:00' }
      it { expect(section).to be_valid }
    end

    context 'with wrong start_time_human' do
      let(:start_time_human) { '1000' }
      it { expect(section).not_to be_valid }
    end

    context 'too early' do
      let(:start_time_human) { '7:00' }
      it { expect(section).not_to be_valid }
    end

    context 'too late' do
      let(:start_time_human) { '23:00' }
      it { expect(section).not_to be_valid }
    end
  end

  describe 'duration' do
    let(:section) { build(:section, start_time_human: '17:00', duration: duration) }

    context '50 minutes' do
      let(:duration) { 50 }
      it { expect(section).to be_valid }
    end

    context '80 minutes' do
      let(:duration) { 80 }
      it { expect(section).to be_valid }
    end

    context '99 minutes' do
      let(:duration) { 99 }
      it { expect(section).not_to be_valid }
    end
  end

  describe 'end_time_human' do
    let(:section) { build(:section, start_time_human: '15:00', duration: 50) }

    it 'must be start_time + duration' do
      expect(section.end_time_human).to eq('15:50')
    end
  end

  describe 'days_of_week' do
    let(:section) { build(:section, start_time_human: '15:00', duration: 50) }

  end
end

