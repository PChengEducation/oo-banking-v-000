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
end #end of the Transfer class
