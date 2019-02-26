class Project < ApplicationRecord
	has_many :projects_vendor
	has_many :vendor, through: :projects_vendor
end
