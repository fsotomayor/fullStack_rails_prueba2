class User < ApplicationRecord
	has_many :items, dependent: :destroy
	validates :name, presence: true
	validates :email, uniqueness: true
	before_save :upper_name

	def upper_name
		self.name[0] = self.name[0].upcase!
	end
end
