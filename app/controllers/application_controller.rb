class ApplicationController < ActionController::API
	before_action :load_battles
	def battles
		render json: @battles
	end
	def count 
		render json: {count: @battles.count}
	end
	def list
		@battles = @battles.where("location!=''")
		render json: {location: @battles.map(&:location).uniq , region: @battles.map(&:region).uniq}
	end
	def stat
		@stat = get_stat
	end
	def get_stat
		render json: {
			most_active: get_most_active,
			attacker_outcome: get_attacker_outcome,
			battle_type: get_battle_type_battle_type,
			defender_size: get_defender_size
		}
	end
	def search
		filtering_params(params).each do |key, value|
	      @battles = @battles.send(key, value) if value.present?
	    end
		render json: @battles
	end
	private
	def load_battles
		@battles = Battle.all
	end
	def get_max_occurence(arr)
		occurence_track = arr.inject(Hash.new(0)) { |h,v| h[v] += 1; h }
		arr.max_by { |v| occurence_track[v] }
	end
	def get_occurence_of(arr,val)
		occurence_track = arr.inject(Hash.new(0)) { |h,v| h[v] += 1; h }
		occurence_track[val]
	end
	def get_most_active
		{  
			attacker_king: get_max_occurence(@battles.map(&:attacker_king).uniq),
			defender_king: get_max_occurence(@battles.map(&:defender_king).uniq),
			region: get_max_occurence(@battles.map(&:region).uniq),
			name:""
		}
	end
	def get_attacker_outcome
		{
			win: get_occurence_of(@battles.map(&:attacker_outcome),'win'),
			loss: get_occurence_of(@battles.map(&:attacker_outcome),'loss')
		}
	end
	def get_battle_type_battle_type
		@battles.map(&:battle_type).uniq.reject(&:empty?)
	end
	def get_defender_size
		defenders = @battles.map(&:defender_size)
		average_rejecting_null = (defenders.reject(&:empty?).map(&:to_i).sum / defenders.reject(&:empty?).map(&:to_i).size)
		min = defenders.reject(&:empty?).min
		defenders = defenders.map(&:to_i)
		{
			average: (defenders.sum / defenders.size),
			average_rejecting_null: average_rejecting_null,
			min: min.to_i,
			max: defenders.max
		}
	end
	def filtering_params(params)
	    params.slice(:name_like,:king_like,:type_like,:location_like)
	end
	
end
