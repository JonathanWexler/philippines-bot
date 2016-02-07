
# How is the weather in (?<location>\w*)\?

module SlackRubyBot
  require_relative 'quotes'

  module Commands
      class Random < SlackRubyBot::Commands::Base      
        match /love/ do |client, data, match|
            client.say(channel: data.channel, text: "<@#{data.user}>, love your code!")
        end
        match /suck/ do |client, data, match|
            client.say(channel: data.channel, text: "Confucius say: 'When anger rises, think of the consequences.'")
        end                
        match /nuts/ do |client, data, match|
            client.say(channel: data.channel, text: "#DontTouchTheNuts")
        end
        command 'i love you' do |client, data, _match|
            client.say(channel: data.channel, text: "<@#{data.user}>, you're.......ok")
        end

        match /project/ do |client, data, match|
            client.say(channel: data.channel, text: "Get ready for final independent projects starting on February 15th! Start thinking of ideas and slack <@wexler>")
        end
        match /seth/ do |client, data, match|
            client.say(channel: data.channel, text: ":trip-seth: :trip-seth: :trip-seth:")
        end        
        match /jon/ do |client, data, match|
            client.say(channel: data.channel, text: "Confucius say: #{Quotes.random_quote}")
        end
    end
end
end