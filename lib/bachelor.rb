def get_first_name_of_season_winner(data, season)
  winner = ""
  #find winner grab there name and spit it at the space
  data[season].each do |contestant_hash|
    if contestant_hash["status"] == "Winner"
      winner = contestant_hash["name"].split
    end
  end
  #return first name
  winner[0]
end

def get_contestant_name(data, occupation)
  answer = ""
  data.each do |season, array|
    array.each do |contestant_hash|
      if contestant_hash["occupation"] == occupation
        answer = contestant_hash["name"]
      end
    end
  end
  answer
end

def count_contestants_by_hometown(data, hometown)
  counter = 0
  data.each do |season, array|
    array.each do |contestant_hash|
      if contestant_hash["hometown"] == hometown
        counter += 1
      end
    end
  end
  counter
end

def get_occupation(data, hometown)
  answer = []
  data.each do |season, array|
    array.find do |contestant_hash|
      if contestant_hash["hometown"] == hometown
        answer = contestant_hash["occupation"]
      end
    end
  end
  answer
end


def get_average_age_for_season(data, season)
  age = 0.0
  num_contestants = 0
  data[season].each do |contestant_hash|
    age += contestant_hash["age"].to_i
    num_contestants += 1
  end
  (age / num_contestants).round
end
