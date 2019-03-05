class BankAccount

  attr_accessor :balance, :open, :status
  attr_reader :name

  def initialize(name)
    @name = name
    @balance = 1000
    @status = "open"
  end

  def deposit(amount)
    @balance = @balance + amount
  end

  def display_balance
    return "Your balance is $#{self.balance}."
  end

  def valid?
    if 
      
    else
      
    end
  end

  def close_account

  end

end
