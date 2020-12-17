# your code goes here
#to review one error at a time run learn --f-f 
require "pry"
class Person
    attr_reader :name
    #you could have more of the methods defined as
    #readers since you (re)define the writer methods below
    attr_accessor :bank_account, :happiness, :hygiene

    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end
    def happiness # use a dot clamp method that sets 0-10 instead of a conditional
        if @happiness > 10
            @happiness = 10
        elsif @happiness <0
            @happiness = 0
        else 
        @happiness
        end
    end
    def hygiene # use a dot clamp method that sets 0-10 instead of a conditional
        if @hygiene > 10
            @hygiene = 10
        elsif @hygiene <0
            @hygiene = 0
        else 
        @hygiene
        end
    end
    def hygiene=(hygiene)
        @hygiene = hygiene
    end
    def happy?
        happiness > 7 ? true : false
    end
    def clean?
        hygiene > 7 ? true : false
    end
    def get_paid(salary)
        self.bank_account += salary
        return "all about the benjamins"
    end
    def take_bath
        self.hygiene += 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end
    def work_out
        self.happiness += 2
        self.hygiene -= 3
        "♪ another one bites the dust ♫"
    end
    def call_friend(friend)
        friend.happiness += 3
        self.happiness += 3
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end
    def start_conversation (friend, topic)
        if topic == 'politics'
            self.happiness -= 2
            friend.happiness -= 2
            "blah blah partisan blah lobbyist"
        elsif topic == 'weather'
            self.happiness += 1
            friend.happiness += 1
            "blah blah sun blah rain"
        else
            'blah blah blah blah blah'
        end
    end
end