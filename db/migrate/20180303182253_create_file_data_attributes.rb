class CreateFileDataAttributes < ActiveRecord::Migration[5.0]
  def change
    create_table :file_data_attributes do |t|
      t.string :file_type
      t.date :drop_date
      t.jsonb :data_attributes
    end

    add_index :file_data_attributes, :file_type
    add_index :file_data_attributes, :drop_date
  end
end
