module SlackRubyBot
  module Commands
    class Help < Base
      def self.call(client, data, _match)
        client.say(channel: data.channel, text: 'contacting @jon')
      end
    end
  end
end