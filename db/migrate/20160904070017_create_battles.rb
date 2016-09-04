class CreateBattles < ActiveRecord::Migration
  def change
    create_table :battles do |t|

    	t.string :name
    	t.integer :year
    	t.integer :battle_number
    	t.string :attacker_king
    	t.string :defender_king
    	t.string :attacker_1
    	t.string :attacker_2
    	t.string :attacker_3
    	t.string :attacker_4
    	t.string :defender_1
    	t.string :defender_2
    	t.string :defender_3
    	t.string :defender_4
    	t.string :attacker_outcome
    	t.string :battle_type
    	t.string :major_death
    	t.string :major_capture
    	t.string :attacker_size
    	t.string :defender_size
    	t.string :attacker_commander
    	t.string :defender_commander
    	t.string :summer
    	t.string :location
    	t.string :region
    	t.text :note
    end
  end
end
