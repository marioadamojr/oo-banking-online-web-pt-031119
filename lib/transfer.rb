class Transfer
  # your code here
  attr_accessor :sender, :receiver, :amount, :status

  def initialize(sender, receiver, amount)
    @sender=sender
    @receiver=receiver
    @amount=amount
    @status="pending"
  end

  def valid?
    if @sender.valid? == true && @receiver.valid? == true
      true
    else
      false
    end
  end

  def execute_transaction
    if @sender.valid? == false || @receiver.valid? ==  false
      "Transaction rejected. Please check your account balance."
      @status="rejected"
    else
      if @status == "pending"
        @sender.balance -= @amount
        @receiver.balance += @amount
        @status = "complete"
      else
        #nothing
      end
    end
  end
end
