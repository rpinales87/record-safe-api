class CreateRecords < ActiveRecord::Migration[5.2]
  def change
    create_table :records do |t|
      t.string :artist
      t.string :title
      t.string :genre
      t.string :year

      t.timestamps
    end
  end
end
