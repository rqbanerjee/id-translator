class CreateIdTypes < ActiveRecord::Migration
  def change
    create_table :id_types do |t|
      t.string :name
      t.integer :length

      t.timestamps
    end
  end
end
