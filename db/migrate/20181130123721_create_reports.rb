class CreateReports < ActiveRecord::Migration[5.2]
  def change
    create_table :reports do |t|
      t.string :md5sum
      t.string :type
      t.string :file
      t.string :field_4
      t.string :field_5
      t.string :field_6
      t.string :field_7
      t.string :field_8
    end
    add_index :reports, :md5sum, unique: true
  end
end
