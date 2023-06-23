# == Schema Information
#
# Table name: classrooms
#
#  id         :integer          not null, primary key
#  address    :string
#  number     :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_classrooms_on_number_and_address  (number,address) UNIQUE
#
class Classroom < ApplicationRecord
  validates_presence_of :number, numericality: { only_integer: true }
end
