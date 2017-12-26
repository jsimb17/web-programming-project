class CreateHelprequests < ActiveRecord::Migration[5.1]
  def change
    create_table :helprequests do |t|
      t.text :subject
      t.text :content

      t.timestamps
    end
  end
end
