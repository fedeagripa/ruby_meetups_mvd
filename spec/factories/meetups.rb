# == Schema Information
#
# Table name: meetups
#
#  id         :bigint           not null, primary key
#  scheduled  :datetime
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
FactoryBot.define do
  factory :meetup do
    scheduled { "2020-10-13 18:54:54" }
  end
end
