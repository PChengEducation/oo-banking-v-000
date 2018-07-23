class Transfer

attr_accessor :sender, :receiver, :status, :amount

def initialize(sender, receiver, amount)
  @sender = sender
  @receiver = receiver
  @status = "pending"
  @amount = amount
  # your code here
end

def valid?
  if sender.valid? && receiver.valid?
    true
  else
    false
  end
end

def execute_transaction
  if @sender.balance < @amount
    @status = "rejected"
    return "Transaction rejected. Please check your acount balance."
  elsif @status == "complete"
    "Transaction was already excuted."
  else
    @sender.deposit(@amount * -1)
    @receiver.deposit(@amount)
    @status = "complete"
  end
end
end #end of the Transfer class
