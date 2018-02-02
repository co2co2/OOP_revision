class Paperboy

  def initialize(name)
    @name = name
    @experience = 0
    @earnings = 0
  end

  def name
    @name
  end

  def name=(name)
    @name = name
  end

  def experience
    @experience
  end

  def experience=(experience)
    @experience = experience
  end

  def earnings
    @earnings
  end

  def quota
    50 + @experience/2
  end

  def deliver(start_address, end_address)
    this_deliver = (end_address - start_address).abs + 1
    if this_deliver <= quota
      this_earning = 0.25* this_deliver - 2
    else
      this_earning = 0.25*quota + 0.5*(this_deliver-quota)
    end
    @experience += this_deliver
    @earnings += this_earning
    this_earning
  end

  def report
    "I'm #{name}, I've delivered #{experience} papers and I've earned #{earnings} so far"
  end

end
