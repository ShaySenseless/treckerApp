class Auftrag < ActiveRecord::Base
  belongs_to :kunde
  has_many :personal
end