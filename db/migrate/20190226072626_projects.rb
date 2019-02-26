class Projects < ActiveRecord::Migration[5.2]
  def change
  	create_table :projects do |t|
      t.string :scope
      t.string :status
      t.date :closure
      t.string :description
    end
  end
end
