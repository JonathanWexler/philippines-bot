module JonBot

  require_relative 'facts'
  module Commands

      class FactMe < SlackRubyBot::Commands::Base

        command 'gif' do |client, data, _match|
            client.say(channel: data.channel, text: "Yay! Philippines", gif: 'Philippines')
        end
        command 'i love you' do |client, data, _match|
            client.say(channel: data.channel, text: "I Love you too, <@#{data.user}>!!")
        end
        command 'fact' do |client, data, _match|
            a = data.text.split
            puts data.inspect
            list = []
            list = Facts.facts.select { |fact| fact.include?(a[2]) } if !a[2].nil?
            if !list.empty?
                client.say(channel: data.channel, text: list.first)
            else
                client.say(channel: data.channel, text: Facts.random_fact)
            end
        end

        class Jon < SlackRubyBot::Commands::Base
          def self.call(client, data, _match)
            client.say(channel: data.channel, text: 'Jon is @jon')
        end
    end
end
end
end