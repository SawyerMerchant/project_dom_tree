require 'warmups2'

describe "PageParser" do 

  let(:str) {  "<div> div text before <p> p text </p> <div> more div text </div> div text after</div>" }
  let(:test) {PageParser.new(str)}

  describe "#initialize" do 
    it "accepts an html string" do 
      expect(test.html_string).to eq(str)
    end







  end








end