def get_first_name_of_season_winner(data, season)
  name = nil
  data.fetch(season).each {|contestant| name = contestant["name"] if contestant.fetch("status") == "Winner"}
  name.split(" ")[0]
end

def get_contestant_name(data, occupation)
  name = nil
  data.each do |season, contestants|
    contestants.each {|contestant| name = contestant["name"] if contestant["occupation"] == occupation}
  end
  name
end

def count_contestants_by_hometown(data, hometown)
  counter = 0
  data.each do |season, contestants|
    contestants.each {|info| counter += 1 if info.fetch("hometown") == hometown}
  end
  counter
end

def get_occupation(data, hometown)
  occupation = nil
  data.each do |season, contestants|
    contestants.each do |info| 
      if info.fetch("hometown") == hometown
        occupation = info.fetch("occupation") 
        break
      end
    end
  end
  occupation
end

def get_average_age_for_season(data, season)
  total_age = 0.0
  data.fetch(season).each {|contestant| total_age += contestant.fetch("age".to_sym).to_i}
  average_age = (total_age / data.fetch(season).length).round
end
