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
    self.hygine += 4
    return "Rub-a-dub just relaxing in the tub"
  end

  def start_conversation(person, topic)
  end

end
