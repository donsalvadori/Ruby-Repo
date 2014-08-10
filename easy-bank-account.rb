
class BankAccount
	attr_reader :balance
	attr_accessor :transactions


#self/class methods. Opted to use class << self notation instead of self.method()

	class << self 

		def create_for(first_name, last_name)
			@accounts ||=[]
			@accounts << BankAccount.new(first_name,last_name)	
		end

		def find_for(first_name, last_name)
			@accounts.find{|account| account.full_name== "#{first_name} #{last_name}"}
		end
	end

	def initialize(first_name,last_name)
	@balance=0
	@first_name=first_name
	@last_name=last_name
	end	

	def full_name
		"#{@first_name} #{@last_name}"
	end

	def hello(name1='Your Name', name2)
		puts "hello #{name1}"
		puts "hello #{name2}"
	end

	def deposit(amount)
		@balance+= amount
	end

	def withdraw(amount)
		@balance-=amount
	end

	def balance
		@balance
	end

	def call_the_reset_method
		reset!
	end
	
	def reset_other_balance(other_account)
		other_account.protected_reset!
	end

	private
	def reset!
		@balance=0
	end
	
	def private_reset!
		@balance=0
	end

	protected
	def protected_reset!
		@balance=0
	end

end


