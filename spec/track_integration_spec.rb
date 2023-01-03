
require 'music_library'
require 'track'



RSpec.describe "integration" do
    it "adds and lists tracks" do
        music_library = MusicLibrary.new
        track_1 = Track.new("title_1", "band_1")
        track_2 = Track.new("title_2", "band_2")
        music_library.add(track_1)
        music_library.add(track_2)
        expect(music_library.all).to eq [track_1, track_2]
    end
    it "searches tracks by title" do 
        music_library = MusicLibrary.new
        track_1 = Track.new("Alpha Beta", "Bob")
        track_2 = Track.new("Gamma Delta", "Alice")
        music_library.add(track_1)
        music_library.add(track_2)
        expect(music_library.search("Alpha")).to eq [track_1]
    
    end


end