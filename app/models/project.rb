class Project < ApplicationRecord
	has_many :projects_vendors
	has_many :vendors, through: :projects_vendors
end
