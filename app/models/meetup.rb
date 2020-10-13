# == Schema Information
#
# Table name: meetups
#
#  id         :bigint           not null, primary key
#  scheduled  :datetime
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Meetup < ApplicationRecord
  has_one_attached :backup_video
end
