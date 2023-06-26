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
class Section < ApplicationRecord
  belongs_to :teacher_subject

  has_many :schedule
  has_many :student, through: :schedule

  attribute :start_time_human, :string
  attribute :end_time_human, :string

  validates :start_time_human, format: { with: /\A(\d{1,2}):(\d{1,2})\z/, message: 'only time in 00:00 format allowed' }
  validates :duration, inclusion: { in: [50, 80], message: 'only 50 or 80 minutes' }
  validate :start_time_within_range

  def start_time_human
    return nil unless start_time

    Time.at(Time.now.beginning_of_day + start_time).strftime('%H:%M')
  end

  def start_time_human=(value)
    return unless value.is_a?(String) && value.match?(/\A(\d{1,2}):(\d{1,2})\z/)

    hour, minute = value.split(':')
    start_time = hour.to_i * 3600 + minute.to_i

    assign_attributes(start_time:)
  end

  def end_time_human
    (Time.parse(start_time_human) + duration.minutes).strftime('%H:%M')
  end

  def start_time_within_range
    errors.add(:start_time_human, 'must be within range 7:30..22:00') unless start_time && start_time > 7*3600+30 && start_time < 22*3600
  end
end
