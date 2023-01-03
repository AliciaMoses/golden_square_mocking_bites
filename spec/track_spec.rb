require 'track'


RSpec.describe Track do 
    it "returns a bool as to whether the keyword matches a title" do
        track_one = Track.new("song_1", "band_1")
        expect(track_one.matches?("song_1")).to eq true 
    end
    it "returns a bool as to whether the keyword matches an artist" do
        track_one = Track.new("song_1", "band_1")
        expect(track_one.matches?("band_1")).to eq true 
    end
    it "returns false when the keyword fails to match the title and artist" do
        track_one = Track.new("song_1", "band_1")
        expect(track_one.matches?("singer")).to eq  false
    end
end