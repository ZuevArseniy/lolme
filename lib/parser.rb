class Parser
  require 'open-uri'

  def self.bash_im
      page = Nokogiri::HTML(open("http://bash.im/"))       #  Nokogiri::HTML::Document
      quote_array = page.css('div.quote')                  #array of texts
      quote_array.each do |quote|
        unless quote.css('div.text').empty? && quote.css('div.actions.a').empty?
        quote.css('div.text').text                        #text by itself
        quote.css('div.actions a').last.text[1..-1]              #id of text
        Time.parse(quote.css('div.actions span').last.text)  #created_at on bash
        end
      end
  end
end