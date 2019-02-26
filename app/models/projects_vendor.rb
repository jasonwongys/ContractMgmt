class ProjectsVendor < ApplicationRecord
  belongs_to :projects
  belongs_to :vendors
  has_one_attached :file
end
