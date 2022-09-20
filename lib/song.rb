

require 'pry'

class Song
@@count = 0
@@artists = []
@@genres = []
attr_reader :name, :artist, :genre

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@artists << artist
        @@genres << genre

        
    end

    def self.count
        @@count
    end
    def self.artists
        @@artists.uniq
    end
    def self.genres
        @@genres.uniq
    end
    def self.genre_count
        
        new_arr = @@genres.group_by{|x| x}.map{|k,v| [k,v.count]}
       genre_hash_count = Hash[*new_arr.flatten]
    end
    def self.artist_count
        new_arr = @@artists.group_by{|x| x}.map{|k,v| [k,v.count]}
        artist_hash_count = Hash[*new_arr.flatten]
    end

end


