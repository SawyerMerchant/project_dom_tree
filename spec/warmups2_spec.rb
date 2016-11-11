require 'warmups2'

describe "PageParser" do

  let(:str) {  "<div> div text before <p> p text </p> <div> more div text </div> div text after</div>" }
  let(:test_page) {PageParser.new(str)}

  let(:parsed_string_arr) { ["<div>", "div text before", "<p>", "p text", "</p>", "<div>", "more div text", "</div>", "div text after", "</div>", ""] }

  describe "#initialize" do

    it "accepts an html string" do
      expect(test_page.html_string).to eq(str)
    end

    describe "#parse" do

      it 'returns an array with each tag and text block' do
        expect(test_page.queue).to eq(parsed_string_arr)
      end

    end

  end





end