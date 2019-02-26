class ProjectsVendors < ActiveRecord::Migration[5.2]
  def change
  	 create_table :projects_vendor do |t|
      t.integer :bidPrice
      t.references :projects, foreign_key: true
      t.references :vendors, foreign_key: true
    end
  end
end