class Projects < ActiveRecord::Migration[5.2]
def change
  	create_table :projects do |t|
      t.string :scope
      t.string :status, :default => "Not Awarded"
      t.date :closure
      t.string :description
    end
  end
end