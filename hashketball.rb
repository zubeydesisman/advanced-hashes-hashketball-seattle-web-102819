require "pry"
def game_hash
  {:home =>{:team_name => "Brooklyn Nets",
            :colors => ["Black", "White"],
            :players => [
                {:player_name =>"Alan Anderson",
                :number =>0,
                :shoe => 16,
                :points =>22,
                :rebounds =>12,
                :assists =>12,
                :steals =>3,
                :blocks =>1,
                :slam_dunks =>1
            },
                {:player_name =>"Reggie Evans",
                :number =>30,
                :shoe => 14,
                :points =>12,
                :rebounds =>12,
                :assists =>12,
                :steals =>12,
                :blocks =>12,
                :slam_dunks =>7
            },
              {:player_name =>"Brook Lopez",
                :number =>11,
                :shoe => 17,
                :points =>17,
                :rebounds =>19,
                :assists =>10,
                :steals =>3,
                :blocks =>1,
                :slam_dunks =>15
            },
             
                {:player_name =>"Mason Plumlee",
                :number =>1,
                :shoe => 19,
                :points =>26,
                :rebounds =>11,
                :assists =>6,
                :steals =>3,
                :blocks =>8,
                :slam_dunks =>5
            },
              {:player_name =>"Jason Terry",
                :number =>31,
                :shoe => 15,
                :points =>19,
                :rebounds =>2,
                :assists =>2,
                :steals =>4,
                :blocks =>11,
                :slam_dunks =>1
            }]
  },
  :away => {:team_name =>"Charlotte Hornets",
            :colors =>["Turquoise", "Purple"],
            :players =>[ 
                {:player_name =>"Jeff Adrien",
                :number =>4,
                :shoe => 18,
                :points =>10,
                :rebounds =>1,
                :assists =>1,
                :steals =>2,
                :blocks =>7,
                :slam_dunks =>2
            },
                {:player_name =>"Bismack Biyombo",
                :number =>0,
                :shoe => 16,
                :points =>12,
                :rebounds =>4,
                :assists =>7,
                :steals =>22,
                :blocks =>15,
                :slam_dunks =>10
            },
              {:player_name =>"DeSagna Diop",
                :number =>2,
                :shoe => 14,
                :points =>24,
                :rebounds =>12,
                :assists =>12,
                :steals =>4,
                :blocks =>5,
                :slam_dunks =>5
            },
             
                {:player_name =>"Ben Gordon",
                :number =>8,
                :shoe => 15,
                :points =>33,
                :rebounds =>3,
                :assists =>2,
                :steals =>1,
                :blocks =>1,
                :slam_dunks =>0
            },
              {:player_name =>"Kemba Walker",
                :number =>33,
                :shoe => 15,
                :points =>6,
                :rebounds =>12,
                :assists =>12,
                :steals =>7,
                :blocks =>5,
                :slam_dunks =>12
            }]
  }
  }
end
def num_points_scored(player_name)
    game_hash.each do |place,team|
      team.each do |attributes,data|
        if attributes == :players
          data.each do |player|
            if player[:player_name] == player_name
              return player[:points]
            end
          end
        end
      end
    end
end
def shoe_size(player_name)
    game_hash.each do|place,team|
    team.each do|attributes,data|
    if attributes == :players
      data.each do |player|
        if player[:player_name] == player_name
          return player[:shoe]
        end 
      end 
    end 
  end
 end
end
def team_colors(team_name)
  game_hash.each do|place,team|
    if team[:team_name] == team_name
      return team[:colors]
    end
  end
end
def team_names
  name_array = []
  game_hash.each do|place,team|
  name_array << team[:team_name]
  end
  name_array
end
def player_numbers(team_name)
  jersey_numbers = []
    game_hash.each do|place,team|
      team.each do|attributes,data|
      if attributes == :players 
          data.each do|player|
          if team[:team_name] == team_name
          jersey_numbers << player[:number]
          end
        end
      end
    end
  end
jersey_numbers
end
def player_stats(players_name)
    stats = {}
    game_hash.each do |place,team|
      team.each do |attributes,data|
        if attributes == :players 
        data.each do|player|
          if player[:player_name] == players_name
            stats = player.delete_if do |k,v|
                k == :player_name
              end
            end
          end
        end
      end
    end
  stats
 end
def big_shoe_rebounds()
  biggest_shoe = 0 
  num_rebounds = 0 
  game_hash.each do |place,team|
    team.each do |attributes,data|
      if attributes == :players
        data.each do |player|
          if player[:shoe] > biggest_shoe
            biggest_shoe = player[:shoe]
            num_rebounds = player[:rebounds]
          end
          end 
        end
      end
    end
    num_rebounds
  end
  def most_points_scored
    most_score = 0 
    person = 0
    game_hash.each do |place,team|
      team.each do|attributes,data|
      if attributes == :players 
        data.each do |player|
          if player[:points] > most_score
            most_score = player[:points]
            person = player[:player_name]
          end 
        end 
      end
    end
  end
  person
end
 def winning_team
    score1 = []
    score2 = []
      game_hash.each do |place,team|
        if team[:team_name] = "Brooklyn Nets"
           team.each do|attributes,data|
             if attributes == :players 
               data.each do |player|
                 score1 << player[:points]
               end
             end
           end
         else
           score2 << player[:points]
         end
         if score1.sum > score2.sum 
           return "Brooklyn Nets"
         else
           return "Charlotte Hornets"
         end
       end
     end
  def player_with_longest_name
    longest_name = ""
     game_hash.each do |place,team|
      team.each do|attributes,data|
      if attributes == :players 
        data.each do |player|
          if player[:player_name].length > longest_name.length
            longest_name = player[:player_name]
          end
        end
      end
    end
  end
    longest_name
  end
 def long_name_steals_a_ton?
     steal = 0
     name = ""
     game_hash.each do |place,team|
      team.each do|attributes,data|
        if attributes == :players 
           data.each do |player|
            if player[:steals] > steal
             steal = player[:steals]
             name = player[:player_name]
            end
           end
         end
       end
     end
     if player_with_longest_name == name
       return true
  end 
end
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  

# def num_points_scored(player_name)
#   game_hash.each do |place,team|
#     team.each do|attributes, data|
#     #binding.pry
#     if attributes == :players
#       data.each do |player|
#       if player[:player_name] == player_name
#         return player[:points]
#       end
#     end
#   end
#   end
# end 
# end
# def shoe_size(player_name)
#     game_hash.each do |place,team|
#     team.each do |attributes,data|
#     if attributes == :players 
#         data.each do |player|
#           if player[:player_name] == player_name
#             return player[:shoe]
#             end
#           end
#         end
#       end
#   end
# end
# def team_colors(team_name)
#     game_hash.each do |place,team|
#     if team[:team_name] == team_name
#         return team[:colors]
#       end 
#     end
# end
# def team_names
#       new_array =[]
#       game_hash.each do |place,team|
#         new_array << team[:team_name]
#       end
#     new_array
# end
#   def player_numbers(team_name)
#         nums = []
#       game_hash.each do |place,team|
#         if team[:team_name] == team_name
#           team.each do |attributes,data|
#           if attributes  == :players
#             data.each do |player|
#               nums << player[:number]
#             end
#           end
#         end
#       end
#     end
#     nums
#   end
  # def player_stats(players_name)
  #   new_hash = {}
  #   game_hash.each do |place,team|
  #     team.each do |attributes,data|
  #       if attributes == :players 
  #           data.each do |player|
  #             if player[:player_name] == players_name
  #               new_hash  =  player.delete_if do |k,v|
  #                 k == :player_name
  #               end
  #             end
  #           end
  #         end
  #       end
  #     end
  #   new_hash
  # end
  # def big_shoe_rebounds
  # biggest_shoe = 0
  # num_rebounds = 0

#   game_hash.each do |place, team|
#     team[:players].each do |player|
#       if player[:shoe] > biggest_shoe
#         biggest_shoe = player[:shoe]
#         num_rebounds = player[:rebounds]
#       end
#     end
#   end

#   num_rebounds
# end

# def iterate_through_players_for(name, statistic)
#   game_hash.each do |_team, game_data|
#     game_data[:players].each do |player|
#       return player[statistic] if player[:player_name] == name
#     end
#   end
# end

# def player_with_most_of(statistic)
#   player_name = nil
#   amount_of_stat = 0

#   game_hash.each do |_team, game_data|
#     game_data[:players].each do |player|
#       if player[statistic].is_a? String
#         if player[statistic].length > amount_of_stat
#           amount_of_stat = player[statistic].length
#           player_name = player[:player_name]
#         end
#       elsif player[statistic] > amount_of_stat
#         amount_of_stat = player[statistic]
#         player_name = player[:player_name]
#       end
#     end
#   end

#   player_name
# end

# def most_points_scored
#   player_with_most_of(:points)
# end

# def winning_team
#   # Set up a hash to keep track of the points scored by each team. This way, we
#   # can iterate through each player, get their points scored, and increase the
#   # count in the hash.

#   scores = { 'Brooklyn Nets' => 0, 'Charlotte Hornets' => 0 }

#   game_hash.each do |_team, game_data|
#     game_data[:players].each do |player|
#       scores[game_data[:team_name]] += iterate_through_players_for(player[:player_name], :points)
#     end
#   end

#   scores.max_by { |_k, v| v }.first
# end

# def player_with_longest_name
#   player_with_most_of(:player_name)
# end

# # # Super Bonus Question

# def long_name_steals_a_ton?
#   player_with_most_of(:steals) == player_with_most_of(:player_name)
# end
  
  










