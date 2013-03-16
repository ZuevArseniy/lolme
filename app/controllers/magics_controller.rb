class MagicsController < ApplicationController

  require 'open-uri'



  def index

    @page = Nokogiri::HTML(open("http://bash.im/"))
    #puts @page


  end

  def parse_bash_im
    page = Nokogiri::HTML(open("http://bash.im/"))       #  Nokogiri::HTML::Document
    quote_array = page.css('div.quote').css('div.text')  #array of quotes
    # to get content, need to use method 'text', e.g.   quote_array[0].text
    # or in loop
    # quote_array.each do |elem|
    # puts elem.text
    # end
  end



end
