require 'pry'

beyonceHash = {
    hits: [
      { title: 'bootylicious', group: true, group_name: 'destinysChild', hair: ['straight', 'blonde', 'pink tips'], signature_look: 'fedora with yellow feather', video_theme: 'dressing room dance', best_line: 'Move your body up and down, make your booty touch the ground', fierceness: 7, formation: false, dancers: 20
      },
      { title: 'singleLadies', group: false, group_name: 'none', hair: ['honey brown', 'half up, half down'], signature_look: 'black bodysuit and legs for days', video_theme: 'single ladies dance', best_line: 'if you like it then you should\'ve put a ring on it', fierceness: 10, formation: true, dancers: 2 
      },
      { title: 'letMeUpgradeYou', group: false, group_name: 'none', hair: ['beaded bun', 'wet hair', 'honey brown', 'waves'], signature_look: 'flapper dress and bodysuit', video_theme: 'decadence, water, gold beads and pearls', best_line: 'I could do for you what Martin did for the people', fierceness: 10, formation: true, dancers: 5 
      },
      { title: 'sorry', group: false, group_name: 'none', hair: ['braids', 'bun', 'blonde', 'waves', 'bob'], signature_look: 'braided crown with gold bikini top', video_theme: 'party bus and Serena Williams in bodysuit', best_line: 'Boi bye', fierceness: 10, formation: false, dancers: 1 
      },
      { title: 'sayMyName', group: true, group_name: 'destinysChild', hair: ['blonde', 'curly', 'braid', 'pony tail'], signature_look: 'none', video_theme: 'color blocked scenes with group', best_line: 'say my name, say my name', fierceness: 7, formation: true, dancers: 6 
      },
      { title: 'feelingMyself', group: true, group_name: 'Nicki Minaj featuring Beyonce', hair: ['blonde', 'waves'], signature_look: 'sporty bodysuit', video_theme: 'Coachella music festival', best_line: 'Im felling myself', fierceness: 9, formation: false, dancers: 0 
      }
    ],
    movies: [
      { title: 'Austin Power\'s Goldmember', year: 2002, rating: 5},
      { title: 'Dreamgirls', year: 2006, rating: 7},
      { title: 'Obsessed', year: 2009, rating: 6},
      { title: 'Cadillac Records', year: 2008, rating: 8},
      { title: 'Life is But a Dream', year: 2013, rating: 6},
      { title: 'The Pink Panther', year: 2006, rating: 4},
      { title: 'Epic', year: 2013, rating: 7},
      { title: 'The Fighting Temptations', year: 2003, rating: 5}
    ]
  };

# 1. puts all the songs
# p beyonceHash[:hits]

# 2. puts all the movies
# puts beyonceHash[:movies]

# 3. create an array with a list of all of Beyonce's hit song titles
# p beyonceHash[:hits].collect {|hits| hits[:title]}

# Or, you can do this...
# titles = []
# beyonceHash[:hits].each do |hit|
#   titles.push(hit[:title])
# end
# p titles

# 4. create an array with a list of all of Beyonce's fierceness ratings
# p beyonceHash[:hits].collect {|hits| hits[:fierceness]}

# 5. give me all the songs where Beyonce is wearing a bodysuit or a bodysuit is part of the video theme
# bodysuits =[]
# beyonceHash[:hits].each do |hit|
#   if hit[:signature_look].include? 'bodysuit'
#     bodysuits.push(hit)
#   elsif hit[:video_theme].include? 'bodysuit'
#     bodysuits.push(hit)
#   end
# end
# p bodysuits

# Or, you can do this...
# bodysuits =[]
# beyonceHash[:hits].each do |hit|
#   if hit[:signature_look].include? 'bodysuit' or hit[:video_theme].include? 'bodysuit'
#     bodysuits.push(hit[:title])
#   end
# end
# p bodysuits

# 6. create an array with all of the songs where Beyonce's fierceness is greater than or equal to 8
# p beyonceHash[:hits].select {|hit| hit[:fierceness] >= 8}

# 7. create an array with all of the movies Beyonce made in 2006 and after
# p beyonceHash[:movies].select {|movie| movie[:year] >= 2006}

# 8. find all the hit songs where beyonce was in a group
# p beyonceHash[:hits].select {|hit| hit[:group]}

# 9. find a hit song where Beyonce's hair is blonde
# p beyonceHash[:hits].find {|hit| hit[:hair].include? 'blonde' }

# 10. find the hit song sorry
# puts beyonceHash[:hits].find {|hit| hit[:title] == 'sorry' }

# 11. find all hit songs where Beyonce's fierceness rating is 10
# p beyonceHash[:hits].select {|hit| hit[:fierceness] == 10 }

# 12. sum up Beyonces fierceness value for all of her hit songs
# p beyonceHash[:hits].collect {|hit| hit[:fierceness]}.sum

# 13. get the average fierceness value for all of her hit songs
# p beyonceHash[:hits].collect {|hit| hit[:fierceness]}.sum(0.0) / beyonceHash[:hits].length

# 14. sum up Beyonces rating value for all of her movies
# p beyonceHash[:movies].collect {|movie| movie[:rating]}.sum

# 15. get the average rating value for all of her movies
# p beyonceHash[:movies].collect {|movie| movie[:rating]}.sum.to_f / beyonceHash[:movies].length

# 16. sum up the total number of dancers in all of the hit song videos
# p beyonceHash[:hits].collect {|hit| hit[:dancers]}.sum

# 17. create an array of beyonces hairstyles without repeats
# p beyonceHash[:hits].collect {|hit| hit[:hair]}.flatten.uniq

# 18. create an hash where the properties are song names and the value is an hash which contains that fierceness and average fierceness
# averageFierceness = beyonceHash[:hits].collect {|hit| hit[:fierceness]}.sum(0.0) / beyonceHash[:hits].length
# songsHash = {}
# beyonceHash[:hits].each do |hit|
#   key = hit[:title]
#   songsHash[key] = {fierceness: hit[:fierceness], average: averageFierceness}
# end
# p songsHash

# 19. create an hash where the properties are movie names and the value is an hash which contains that rating and average rating
# averageRatings = beyonceHash[:movies].collect {|movie| movie[:rating]}.sum.to_f / beyonceHash[:movies].length
# movieHash = {}
# beyonceHash[:movies].each do |movie|
#   key = movie[:title]
#   movieHash[key] = {rating: movie[:rating], average: averageRatings}
# end
# p movieHash

# 20. create a hash with beyonces hairstyles with a tally of each hairstyle ie { 'blonde': 3, ect.}
# hairstyles = beyonceHash[:hits].collect {|hit| hit[:hair]}.flatten
# styles = {}
# hairstyles.each do |style|
#   if styles.key? style
#     styles[style] += 1
#   else
#     styles[style] = 1
#   end
# end
# p styles

binding.pry
0