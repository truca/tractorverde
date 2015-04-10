class Order < ActiveRecord::Base
    belongs_to :client, dependent: :destroy
    validates :client, :presence => true
end
