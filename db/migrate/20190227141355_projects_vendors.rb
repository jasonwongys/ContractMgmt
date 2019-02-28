class ProjectsVendors < ActiveRecord::Migration[5.2]
  def change
  create_table :projects_vendors do |t|
      t.string :bidPrice 
      t.references :project, foreign_key: true
      t.references :vendor, foreign_key: true
    end
  end
end