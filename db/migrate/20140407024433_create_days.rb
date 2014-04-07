class CreateDays < ActiveRecord::Migration
  def change
    create_table :days do |t|
      t.string :name

      t.timestamps
    end
    add_index :days, :name
  end
end
