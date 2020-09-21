require_relative "../lib/wordwrap.rb"

describe Wordwrap do
    context "wraps words" do 

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

        context "given string with space" do
            it "breaks line on space" do 
                expect(described_class.new.word_wrap("hello world", 5)).to eq("hello\nworld")
            end
        end

    end
end

