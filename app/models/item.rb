class Item < ApplicationRecord
  belongs_to :category
  belongs_to :user, optional: true
  
  scope :sc_size,  (-> (x) { where("size = ?", x) } )
  scope :sc_no_asignado, (-> { where("user_id is null") } )
end
