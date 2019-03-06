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

end
