def get_first_name_of_season_winner(data, season)
  name = nil
  data.fetch(season).each {|contestant| namne = contestant["name"] if contestant.fetch("status") == "Winner"}
  name.split(" ")[0]
end

def get_contestant_name(data, occupation)
  # code here
end

def count_contestants_by_hometown(data, hometown)
  # code here
end

def get_occupation(data, hometown)
  # code here
end

def get_average_age_for_season(data, season)
  # code here
end

data = {
   "season 19":[
      {
         "name":"Ashley Iaconetti",
         "age":"26",
         "hometown":"Great Falls, Virginia",
         "occupation":"Nanny/Freelance Journalist",
         "status":""
      },
      {
         "name":"Becca Tilley",
         "age":"26",
         "hometown":"Shreveport, Louisiana[b]",
         "occupation":"Chiropractic Assistant",
         "status":""
      },
      {
         "name":"Britt Nilsson",
         "age":"27",
         "hometown":"Hollywood, California",
         "occupation":"Waitress",
         "status":"Winner"
      }
}
get_first_name_of_season_winner(data, "season 19")