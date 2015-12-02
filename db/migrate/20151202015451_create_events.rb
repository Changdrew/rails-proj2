class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :address
      t.float :latitude
      t.float :longitude
      t.string :title
      t.string :description
      t.time :time
      t.date :date

      t.timestamps null: false
    end
  end
end
