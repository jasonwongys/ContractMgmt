class Vendor < ApplicationRecord
	has_many :projects_vendor
	has_many :project, through: :projects_vendor

end
