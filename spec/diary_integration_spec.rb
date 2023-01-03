require 'secret_diary'
require 'diary'


RSpec.describe "integration" do
        context "initially" do
            it "isn't posisble to read the diary as it is locked" do
                diary = Diary.new("Diary contents")
                secret_diary = SecretDiary.new(diary)
                expect { secret_diary.read }.to raise_error "Go away!"
            end
        end
        context "when unlocked" do 
            it "reads diary contents" do
                diary = Diary.new("Diary contents")
                secret_diary = SecretDiary.new(diary)
                secret_diary.unlock
                expect(secret_diary.read).to eq "Diary contents"
            end
        end
        context "when it is locked " do 
            it "does not allow for the diary to be read" do
                    diary = Diary.new("Diary contents")
                    secret_diary = SecretDiary.new(diary)
                    secret_diary.unlock
                    secret_diary.lock
                    expect { secret_diary.read }.to raise_error "Go away!"
            end
        end


end