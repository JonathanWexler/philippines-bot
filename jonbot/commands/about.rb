module SlackRubyBot
      require_relative 'quotes'

  module Commands
    class Default < Base
      command 'about'
      match(/^(?<bot>[[:alnum:][:punct:]@<>]*)$/u)

      def self.call(client, data, _match)
        client.say(channel: data.channel, text: "Confucius say: #{Quotes.random_quote}")
      end
    end
  end
end