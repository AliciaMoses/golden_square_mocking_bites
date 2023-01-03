require 'cat_facts'

RSpec.describe CatFacts do
    it "returns a fact about cats" do
        spoof_request = double :cat, get: '{"fact":"While many parts of Europe and North America consider the black cat a sign of bad luck, in Britain and Australia, black cats are considered lucky.","length":146}'
        cat_fact = CatFacts.new(spoof_request)
        expect(cat_fact.provide).to eq "Cat fact: While many parts of Europe and North America consider the black cat a sign of bad luck, in Britain and Australia, black cats are considered lucky."

    end

end