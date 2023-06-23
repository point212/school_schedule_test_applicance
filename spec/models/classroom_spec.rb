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
require 'rails_helper'

RSpec.describe Classroom, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
