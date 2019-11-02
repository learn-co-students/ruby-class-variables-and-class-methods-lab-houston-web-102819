class Song
    attr_accessor :name, :artist, :genre

    @@all = []
    @@count = 0
    @@artists = []
    @@genres = []
    

    def initialize (name, artist, genre)
        @name = name
        @genre = genre
        @artist = artist
        @@all << self
        @@count += 1
        @@artists << artist
        @@genres << genre
    end

    def self.count
        @@count
    end

    def self.artists
        new_array = []
        @@artists.each do |artist|
            if !new_array.include?(artist)
                new_array << artist
            end
        end
        new_array
    end

    def self.genres
        new_array = []
        @@genres.each do |genre|
            if !new_array.include?(genre)
                new_array << genre
            end
        end
        new_array
    end

    def self.genre_count
        new_hash = {}
        @@genres.each do |genre|
            if new_hash.include?(genre)
                new_hash[genre] += 1
            else
                new_hash[genre] = 1
            end
        end
        new_hash
    end

    def self.artist_count
        new_hash = {}

        @@artists.each do |artist|
            if new_hash.include?(artist)
                new_hash[artist] += 1
            else
                new_hash[artist] = 1
            end
        end
        new_hash
    end

end
