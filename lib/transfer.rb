class Transfer

#WHAT TRANSFER SHOULD BE ALLOWED TO DO
#Transfer should start in a pending status
#Then go to complete state OR rejected status if the accounts aren't valid OR no money
#Once completed it can be put into a reversed status.

  attr_accessor :sender, :receiver, :amount, :status

  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @amount = amount
    @status = "pending"
  end

  def valid?
    if @sender.valid? == true && @receiver.valid? == true
      true
    else
      false
    end
  end

  def execute_transaction
    if self.valid? == true
      @receiver.deposit(@amount)
      return "complete"
    else self.valid? == false
      return "Transaction rejected. Please check your account balance."
    end
  end

end
