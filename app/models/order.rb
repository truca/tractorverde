class Order < ActiveRecord::Base
    belongs_to :user, dependent: :destroy
    validates :user, :presence => true
end
