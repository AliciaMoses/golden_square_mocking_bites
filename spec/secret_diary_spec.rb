require 'secret_diary'


RSpec.describe SecretDiary do
    context "initially" do
        it "is not possible to read contents as the diary is locked" do
            diary = double :diary
            secret_diary = SecretDiary.new(diary)
            expect { secret_diary.read }.to raise_error "Go away!"
        end
    end
    context "when unlocked" do
        it "allows for content to be read" do
            diary = double :diary, read: "Fake diary contents"
            secret_diary = SecretDiary.new(diary)
            secret_diary.unlock
            expect(secret_diary.read).to eq "Fake diary contents"
        end
    end
    context "when relocked" do
        it "is not possible to read the diary contents" do
            diary = double :diary
            secret_diary = SecretDiary.new(diary)
            secret_diary.unlock
            secret_diary.lock
            expect { secret_diary.read }.to raise_error "Go away!"
        end
    end

end