require 'demo_diary'
require 'demo_diary_entry'

RSpec.describe "integration" do 
    it "counts the words in all entries" do
        diary = DemoDiary.new
        diary.add(DemoDiaryEntry.new("title", "contents here"))
        diary.add(DemoDiaryEntry.new("title_2", "more contents here"))
        expect(diary.count_words).to eq 5
    end
end