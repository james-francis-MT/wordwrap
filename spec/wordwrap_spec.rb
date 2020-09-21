require_relative "../lib/wordwrap.rb"

describe Wordwrap do
    context "wraps words" do 
        context "given nil" do
            it "returns an empty string" do 
                expect(described_class.new.word_wrap(nil)).to eq("")
            end
        end
    end
end

