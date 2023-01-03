require 'diary'

RSpec.describe Diary do 
    it "sets the contents and reads them" do
        diary = Diary.new("Diary contents")
        expect(diary.read).to eq "Diary contents"
    end


end 