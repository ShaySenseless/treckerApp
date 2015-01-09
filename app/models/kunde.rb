class Kunde < ActiveRecord::Base
	has_many :auftrags
end
