class Item < ApplicationRecord
  belongs_to :category
  belongs_to :user, optional: true
  
  scope :sc_size,  (-> (x) { where("size = ?", x) } )
  scope :sc_no_asignado, (-> { where("user_id is null") } )

  after_destroy :destroy_cat

	def destroy_cat
		Category.destroy unless Category.items.any?
	end
end
