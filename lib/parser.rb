class Parser
  require 'open-uri'

  def self.bash_im
      bash_array = []
      page = Nokogiri::HTML(open("http://bash.im/"))
      quote_array = page.css('div.quote')
      quote_array.each do |quote|
        unless quote.css('div.text').empty? && quote.css('div.actions.a').empty?
          quote = {external_id: quote.css('div.actions a').last.text[1..-1], content: quote.css('div.text').text, external_time: Time.parse(quote.css('div.actions span').last.text)    }
          bash_array.push(quote)
        end
      end
    bash_array
  end

  def self.peroshki
    peroshki_array = []
    page = Nokogiri::HTML(open("http://www.perashki.ru/piro/all?sort=2&page=1"))
    quote_array = page.css('div.PiroEntry')
    p quote_array.css('div.PiroEntry').length
    quote_array.each do |quote|
        perojok = {external_id: quote.attr('id'), content: quote.css('div.PiroBox div.TextContainer div.Text').text, external_time: Time.parse(quote.css('div.PiroBox div.TextContainer div.Author span').last.text)    }
        peroshki_array.push(perojok)
    end
    peroshki_array

    end

end