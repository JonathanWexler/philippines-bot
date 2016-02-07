module Quotes
    @quotes = ["It does not matter how slowly you go so long as you do not stop.",
        "Our greatest glory is not in never falling, but in rising every time we fall.",
        "I hear and I forget. I see and I remember. I do and I understand.",
        "Wheresoever you go, go with all your heart.",
        "By three methods we may learn wisdom: First, by reflection, which is noblest; Second, by imitation, which is easiest; and third by experience, which is the bitterest.",
        "When anger rises, think of the consequences.",
        "I want you to be everything that's you, deep at the center of your being.",
        "Real knowledge is to know the extent of one's ignorance.",
        "Respect yourself and others will respect you.",
        "Before you embark on a journey of revenge, dig two graves.",
        "Eat the lunch before the learn, and after the learn.",
        "Wax on, then wax off.",
        "The pizza is the key to success.",
        "When it is obvious that the goals cannot be reached, don't adjust the goals, adjust the action steps.",
        "To know what you know and what you do not know, that is true knowledge.",
        "All the single ladies, all the single ladies.",
        "Happy hour on the 16th :simple-smile:",
        "Add, commit, then push. One must rebase from time to time.",
        "Ask your friend for help, because Jon is not here.",
        "Jon is here to help and it ain't no thang.",
        "What you don't see you can't hear.",
        "What begins in the brain ends with a wok.",
        "When yesterday is too much to bear, drink a bowl of rice.",
        "The bubbly tummy feeling you get is the Indian food.",
        "Yesterday is not today.",
        "Six was afraid of seven because seven ate a horse.",
    "Don't talk about Jon unless you can handle the @wexler"]
    def self.quotes
        @quotes
    end

    def self.random_quote
        @quotes.shuffle.first
    end

end