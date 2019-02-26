class Vendor < ApplicationRecord
	has_many :projects_vendors
	has_many :projects, through: :projects_vendors

end
