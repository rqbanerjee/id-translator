class CreateIdentifiers < ActiveRecord::Migration
  def change
    create_table :identifiers do |t|
      t.string :real_id
      t.string :generated_id
      t.integer :type_id

      t.timestamps
    end
  end
end
