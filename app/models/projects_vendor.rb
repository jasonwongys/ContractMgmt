class ProjectsVendor < ApplicationRecord
  belongs_to :project
  belongs_to :vendor
  has_one_attached :file
end
