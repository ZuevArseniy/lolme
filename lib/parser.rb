class Parser
  require 'open-uri'

  def self.bash_im
      bash_array = []
      page = Nokogiri::HTML(open("http://bash.im/"))
      quote_array = page.css('div.quote')
      quote_array.each do |quote|
        unless quote.css('div.text').empty? && quote.css('div.actions.a').empty?
          quote = {extermal_id: quote.css('div.actions a').last.text[1..-1], content: quote.css('div.text').text, external_time: Time.parse(quote.css('div.actions span').last.text)    }
          bash_array.push(quote)
        end
      end
    bash_array
  end
end