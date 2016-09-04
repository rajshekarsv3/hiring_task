class Battle < ActiveRecord::Base
	def self.name_like(name)
		where("name like '%#{name}%'")
	end
	def self.king_like(name)
		where("attacker_king like '%#{name}%' or defender_king like '%#{name}%' ")
	end
	def self.type_like(name)
		where("battle_type like '%#{name}%'")
	end
	def self.location_like(name)
		where("location like '%#{name}%'")
	end
end
