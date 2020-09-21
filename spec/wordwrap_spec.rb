require_relative "../lib/wordwrap.rb"

describe Wordwrap do
    context "wraps words" do 

        context "given nil" do
            it "returns an empty string" do 
                expect(described_class.new.word_wrap(nil, 5)).to eq("")
            end
        end

        context "given empty string" do
            it "returns an empty string" do 
                expect(described_class.new.word_wrap("", 5)).to eq("")
            end
        end

        context "given letter" do
            it "returns the same letter" do 
                expect(described_class.new.word_wrap("a", 5)).to eq("a")
            end
        end

        context "given string with same length as width" do
            it "returns the string" do 
                expect(described_class.new.word_wrap("hello", 5)).to eq("hello")
            end
        end

        context "given string with length greater than width" do
            it "returns the split string" do 
                expect(described_class.new.word_wrap("mountain", 5)).to eq("mount\nain")
                expect(described_class.new.word_wrap("dinosaur", 4)).to eq("dino\nsaur")
                expect(described_class.new.word_wrap("verylongword", 4)).to eq("very\nlong\nword")
            end
        end

        context "given string with space" do
            it "breaks line on space" do 
                expect(described_class.new.word_wrap("word word", 6)).to eq("word\nword")
                expect(described_class.new.word_wrap("wrap here", 6)).to eq("wrap\nhere")
                expect(described_class.new.word_wrap("word word word", 6)).to eq("word\nword\nword")
            end
        end

        context "given string with two space" do
            it "breaks line on second space" do 
                expect(described_class.new.word_wrap("hi hi world", 5)).to eq("hi hi\nworld")
                #expect(described_class.new.word_wrap("hi hi world", 6)).to eq("hi hi\nworld")
            end
        end

        # context "given string with three spaces" do
        #     it "breaks line on second space" do 
        #         expect(described_class.new.word_wrap("hi hi to yu", 5)).to eq("hi hi\nto yu")
        #         expect(described_class.new.word_wrap("hi hi to yu", 6)).to eq("hi hi\nto yu")
        #     end
        # end

    end
end

