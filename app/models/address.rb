class Address < ActiveRecord::Base
    belongs_to :house
    validates :postcode, presence: true
    validates :mainaddress, presence: true
    validates :detailaddress, presence: true
end
