class Transfer
  attr_accessor :sender, :receiver, :amount, :status

  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @amount = amount
    @status = "pending"
  end

  def valid?
    @sender.valid? && @receiver.valid?
  end

  def execute_transaction
    if status == "pending" && @sender.balance > self.amount
      @sender.balance -= @amount
      @receiver.balance += @amount
      @status = "complete"
    elsif @sender.balance < self.amount
      p "Transaction rejected. Please check your account balance."
    end
  end
end
