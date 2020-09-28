class CreateStudios < ActiveRecord::Migration[6.0]
  def change
    create_table :studios do |t|
      t.string :name
      t.string :location
      t.string :info

      t.timestamps
    end
  end
end
