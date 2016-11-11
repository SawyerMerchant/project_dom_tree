require 'node'

describe "Node" do

  let(:open_tag) {Node.new("<h1>", 0)}

  let(:text_tag) {Node.new("I am text", 1)}

  let(:close_tag) {Node.new("</li>", 2)}

  let(:open_tag_with_attributes) {Node.new("<div class=\"front right\" id=\"main-area\"", 3)}

  describe "#type" do

    it 'takes a tag and return a type/content if text' do

      expect(open_tag.type).to eq("h1")
      expect(text_tag.type).to eq("text")
      expect(text_tag.content).to eq("I am text")

    end

  end

  describe "#atributes" do

    it 'takes a tag and returns an attribute hash' do
      expect(open_tag_with_attributes.attributes).to eq({class: ["front", "right"], id: ["main-area"]})
    end

  end

  describe "#closing?" do

    it 'returns true if tag is a closing tag' do
      expect(close_tag.closing?).to be_truthy
    end

  end

end