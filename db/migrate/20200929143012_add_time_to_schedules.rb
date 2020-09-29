class AddTimeToSchedules < ActiveRecord::Migration[6.0]
  def change
    add_column :schedules, :time, :integer
  end
end
