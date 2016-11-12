require 'DOMparser.rb'

describe 'DOMparser' do

  let(:file) {DOMparser.load("test.html")}
  let(:arr) {["<!doctype html>", "<html>", "<head>", "<title>", "This is a test page", "</title>", "</head>", "<body>", "<div class=\"top-div\">", "I'm an outer div!!!", "<div class=\"inner-div\">", "I'm an inner div!!! I might just", "<em>", "emphasize", "</em>", "some text.", "</div>", "I am EVEN MORE TEXT for the SAME div!!!", "</div>", "<main id=\"main-area\">", "<header class=\"super-header\">", "<h1 class=\"emphasized\">", "Welcome to the test doc!", "</h1>", "<h2>", "This document contains data", "</h2>", "</header>", "<ul>", "Here is the data:", "<li>", "Four list items", "</li>", "<li class=\"bold funky important\">", "One unordered list", "</li>", "<li>", "One h1", "</li>", "<li>", "One h2", "</li>", "<li>", "One header", "</li>", "<li>", "One main", "</li>", "<li>", "One body", "</li>", "<li>", "One html", "</li>", "<li>", "One title", "</li>", "<li>", "One head", "</li>", "<li>", "One doctype", "</li>", "<li>", "Two divs", "</li>", "<li>", "And infinite fun!", "</li>", "</ul>", "</main>", "</body>", "</html>", ""]}



  describe '#load' do

    it 'reads in a file and converts it to an array' do
      expect(file).to eq(arr)
    end

  end

  describe '#build_tree' do

    # it 'reads an array and builds a tree of nodes' do
      
    # end

  end


end
