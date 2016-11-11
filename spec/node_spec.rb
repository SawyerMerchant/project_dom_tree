require 'node'

describe "Node" do

  let(:open_tag) {Node.new("<h1>", 0)}
  let(:text_tag) {Node.new("I am text", 1)}
  let(:close_tag) {Node.new("</li", 2)}
  let(:open_tag_with_attributes) {Node.new("<div class=\"front right\" id=\"main-area\"", 3)}

  describe "#type" do

    it 'takes a tag and return a type' do
      expect(open_tag.type).to eq("h1")
    end

  end



end