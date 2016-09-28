music_library = [
  ["Adele",
    ["19",
      ["Day Dreamer", "Best For Last"]
    ],
    ["21",
      ["Rollin' In The Deep", "Rumor Has It"]
    ]
  ],
  ["Beyonce",
    ["4",
      ["1 + 1", "Countdown"]
    ],
    ["Beyonce",
      ["Haunted", "Pretty Hurts"]
    ]
  ]
]


def nested_array(arr)
arr.each do |artist_array|
  artist_array.each do |artist_element|
    # we are inside the first level of the array
    # artist_element = ["Adele", ["19", ["Day Dreamer", "Best For Last"]], ["21", ["Rollin' In The Deep", "Rumor Has It"]]]

    if artist_element.class != Array
      puts "Artist: #{artist_element}"
    else
      artist_element.each do |album_element|
        # we are inside the second level of the array,
        # album_element = ["19", ["Day Dreamer", "Best For Last"]]
        if album_element.class != Array
          puts "Album: #{album_element}"
        else
          album_element.each do |song_element|
            # we are inside the third level of the array
            # song_element = "Day Dreamer"
            puts "Song: #{song_element}"
          end
        end
      end
    end
  end
end
end

nested_array(music_library)
