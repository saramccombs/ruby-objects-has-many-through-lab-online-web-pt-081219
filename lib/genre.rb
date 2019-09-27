class Genre

    attr_accessor :name
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all 
        @@all
    end

    def songs
        Song.all.select {|songs| songs.genre == self }
    end

    def artists
        songs.map{|song| song.artist}
    end
    
    def add_song(song)
        songs << song
    end

    


end