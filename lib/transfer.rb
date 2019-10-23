class Transfer
  attr_accessor :sender, :reciever, :amount

  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = reciever
    @amount = amount
  end
end
