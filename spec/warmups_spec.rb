require 'warmups'

describe Tag do

  let(:test_tag) {Tag.new("<p class='foo bar' id='baz'>")}

  describe "#type" do

    it "retruns a type" do
      expect(test_tag.type).to eq("p")
    end

    it "returns a class" do
      expect(test_tag.classes).to eq(['foo', 'bar'])
    end

  end




end
