FactoryBot.define do
  factory :section do
    teacher_subject
    classroom { 101 }
    start_time_human { '10:00' }
    duration { 50 }
    days_of_week { 'TH' }
  end
end
