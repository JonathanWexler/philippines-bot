module SlackRubyBot
    remove_const(:ABOUT) if (defined?(ABOUT))
    ABOUT = "Jon"
end