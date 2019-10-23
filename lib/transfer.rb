class Transfer
  # your code here
  attr_accessor :sender, :receiver, :amount, :status

  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @status = "pending"
    @amount = amount
  end

  def valid?
    self.sender.valid? && self.receiver.valid? ? true : false
  end

  def execute_transaction
<<<<<<< HEAD
    if self.valid? == false || self.sender.balance < self.amount
      self.status = "rejected"
      return "Transaction rejected. Please check your account balance."
    elsif self.status == "complete"
      puts "Transaction was already executed."
    else
      self.sender.deposit(amount * -1)
      self.receiver.deposit(amount)
      self.status = "complete"
    end
  end

  def reverse_transfer
    if self.status == "complete"
      self.sender.deposit(amount)
      self.receiver.deposit(amount * -1)
      self.status = "reversed"
=======
    if self.valid? && self.status == "pending"
      self.sender.balance -= self.amount
      self.receiver.balance += self.amount
      self.status = "complete"
    else
      self.status = "rejected"
      return "Transaction rejected. Please check your account balance."
>>>>>>> e40cb3b9d4b302ae887cde4b5856cb8489483222
    end
  end
end
