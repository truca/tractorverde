class OrderProduct < ActiveRecord::Base
    belongs_to :order, dependent: :destroy
    belongs_to :product, dependent: :destroy
    
    validates :order, :presence => true
    validates :product, :presence => true
end
