class Person

  attr_accessor :happiness, :bank_account, :hygiene
  attr_reader :name, :happiness
  attr_writer

  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8

  end

  def happiness=(num)
    if num > 10
      @happiness = 10
    elsif num < 0
      @happiness = 0
    else
      @happiness = num
    end
  end

  def hygiene=(num)
    if num > 10
      @hygiene = 10
    elsif num < 0
      @hygiene = 0
    else
      @hygiene = num
    end
  end

  def clean?
    if @hygiene > 7
      return true
    end
    false
  end

  def happy?
    if @happiness > 7
      return true
    end
    false
  end

  def get_paid(salary)
    @bank_account += salary
    "all about the benjamins"
  end

  def take_bath
    @hygiene += 4
    self.hygiene = @hygiene
    return "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    @hygiene -= 3
    self.hygiene = @hygiene
    @happiness += 2
    self.happiness = @happiness
    "♪ another one bites the dust ♫"
  end

  def call_friend(friend)
    @happiness += 3
    "Hi #{callee.name}! It's #{caller.name}. How are you?"
  end

  def start_conversation(person, topic)
  end

end
