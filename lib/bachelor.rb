def get_first_name_of_season_winner(data, season)
  r=data[season].find{|el| el["status"]=="Winner"}["name"].split(" ")[0]
end

def get_contestant_name(data, occupation)
  data.values.flatten.find{|el| el["occupation"]==occupation}["name"]
end

def count_contestants_by_hometown(data, hometown)
  data.values.flatten.select{|el| el["hometown"]==hometown}.size
end

def get_occupation(data, hometown)
  data.values.flatten.find{|el| el["hometown"]==hometown}["occupation"]
end

def get_average_age_for_season(data, season)
  r=0.0
  data[season].each{|el| r+=el["age"].to_f}
  (r/(data[season].size)).round
end
