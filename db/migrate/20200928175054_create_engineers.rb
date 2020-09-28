class CreateEngineers < ActiveRecord::Migration[6.0]
  def change
    create_table :engineers do |t|
      t.string :name
      t.string :bio

      t.timestamps
    end
  end
end
