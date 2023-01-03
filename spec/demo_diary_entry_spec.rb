require 'demo_diary_entry'



RSpec.describe DemoDiaryEntry do 
    it "constructs" do
        diary_entry = DemoDiaryEntry.new("title", "contents") 
        expect(diary_entry.title).to eq "title"
        expect(diary_entry.contents).to eq "contents"
    end 
    it "counts words in the contents" do 
        diary_entry = DemoDiaryEntry.new("title", "contents") 
        expect(diary_entry.count_words).to eq 1
    end
end 