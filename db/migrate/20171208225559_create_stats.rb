class CreateStats < ActiveRecord::Migration[5.1]
  def change
    create_table :stats do |t|
      t.string :playername
      t.string :team
      t.string :position
      t.integer :goals
      t.integer :assists
      t.integer :points
      t.integer :penaltymin
      t.integer :shots

      t.timestamps
    end
  end
end
