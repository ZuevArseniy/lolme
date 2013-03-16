class MagicsController < ApplicationController

  require 'open-uri'



  def index

    @page = Nokogiri::HTML(open("http://bash.im/"))
    #puts @page


  end





end
