class Vendors < ActiveRecord::Migration[5.2]
  def change
    create_table :vendors do |t|
      t.string :name
      t.string :profile
      t.string :certifications
      t.timestamps
    end
  end
end