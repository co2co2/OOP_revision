class BankAccount
  attr_accessor :balance, :interest_rate
  def initialize(balance,interest_rate)
    @balance = balance
    @interest_rate = interest_rate
  end

  def deposit(amount)
    @balance += amount
  end

  def withdraw(amount)
    if @balance > 0
      if @balance >= amount
        @balance -= amount
      else
        @balance -= @balance
      end
    else
      @balance = @balance
    end
  end

  def gain_interest
    @balance*(1+interest_rate)
  end
end
