class Order < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :status

  has_many  :order_details
  has_many  :products, through: :order_details
  
  # todo revisar generacion del numero del pedido
  validates :number, presence: true, uniqueness: true
  validates :total, presence: true, numericality: true
  validates :user_id, presence: true, numericality: true
  validates :status_id, presence: true
end
