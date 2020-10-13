# == Schema Information
#
# Table name: meetups
#
#  id         :bigint           not null, primary key
#  scheduled  :datetime
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require 'rails_helper'

RSpec.describe Meetup, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
