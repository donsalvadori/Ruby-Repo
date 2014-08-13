treehouse = {:name=>'Treehouse', :location=> 'Treehouse Island'}

class BankAccount
	def initialize(name)
		@name=name
		@transaction = []
	end

	def deposit(amount, options={})
		options[:memo]||= 'Regular deposit.'
		@transactions.push ({:amount=> amount, :memo=> options[:memo]})
	end
end

bank_account = BankAccount.new ("Chris")
bank_account.deposit(100)
bank_account.deposit(100, {:memo=> 'happy birthday!'})

puts bank_account.inspect


# Dates & Times


date = Date.new

puts date.to_s

date = Date.new (2012, 4, 1)

puts date.strftime("%m/%d/%Y")

date.mday

day.day

date.friday?

date.month

date.wday

date.yday

date2 =  Date.parse ('2012/4/3')


time = Time.new


