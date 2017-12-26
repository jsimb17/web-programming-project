class CreateSchedules < ActiveRecord::Migration[5.1]
  def change
    create_table :schedules do |t|
      t.string :team1
      t.string :team2
      t.string :location
      t.date :date
      t.time :time

      t.timestamps
    end
  end
end
