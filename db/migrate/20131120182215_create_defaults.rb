class CreateDefaults < ActiveRecord::Migration
  def change
    create_table :defaults do |t|
      t.string :table_name
      t.integer :record_id

      t.timestamps
    end
  end
end
