require 'demo_diary'

RSpec.describe DemoDiary do

    it "adds and lists diary entries" do 
        diary = DemoDiary.new
        # fake_diary_entry_1 = FakeDiaryEntry.new
        # fake_diary_entry_2 = FakeDiaryEntry.new
        fake_diary_entry_1 = double :diary_entry
        fake_diary_entry_2 = double :diary_entry
        diary.add(fake_diary_entry_1)
        diary.add(fake_diary_entry_2)
        expect(diary.entries).to eq [fake_diary_entry_1, fake_diary_entry_2]
    end
    it "counts words in the entries  given" do
        diary = DemoDiary.new
        # fake_diary_entry_1 = FakeTwoWordDiaryEntry.new
        # fake_diary_entry_2 = FakeThreeWordDiaryEntry.new
        fake_diary_entry_1 = double :diary_entry, count_words: 2
        fake_diary_entry_2 = double :diary_entry, count_words: 3
        diary.add(fake_diary_entry_1)
        diary.add(fake_diary_entry_2)
        expect(diary.count_words).to eq 5
    end

end 


=begin

class FakeDiaryEntry 
end 

class FakeTwoWordDiaryEntry 
    def count_words
        return 2
    end
end 

class FakeThreeWordDiaryEntry 
    def count_words
        return 3
    end
end 

=end