class CreateMeetups < ActiveRecord::Migration[6.0]
  def change
    create_table :meetups do |t|
      t.datetime :scheduled

      t.timestamps
    end
  end
end
