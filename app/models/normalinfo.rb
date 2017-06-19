class Normalinfo < ActiveRecord::Base
    belongs_to :house
    validates :housetype, presence: true
    validates :dealtype, presence: true
    validates :tradefee, presence: true
    validates :monthlyfee, presence: true
end
