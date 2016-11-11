require 'warmups2'

describe "PageParser" do

  let(:str) {  "<div> div text before <p> p text </p> <div> more div text </div> div text after</div>" }
  let(:test_page) {PageParser.new(str)}

  let(:test_dom) { [
    {type: div, depth: 0, children: []},
    {type: text, depth: 1, value: "div text before", children[]},
    {type: p, depth: 1}



  ]  }

  describe "#initialize" do
    it "accepts an html string" do
      expect(test_page.html_string).to eq(str)
    end

  describe "#tag_finder" do

    it 'returns position of first open tag' do
      expect(test.tag_finder)
    end

  end





  end








end