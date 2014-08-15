require 'logger'

class BankAccount
	attr_reader :file_logger, :stdout_logger

	def initialize(name)
		@name = name
		@transactions = []
		@stdout_logger = Logger.new(STDOUT)
		@file_logger = Logger.new("./bank_account.log")
	end

	def deposit(amount)
		log "Depositing #{amount}"
		@transactions.push(amount)
	end

	def withdraw(amount)
		log "withdraw #{amount}"
		@transactions.push(-amount)
	end

	def log(message, level=Logger::INFO)
		file_logger.add level, message, "#{self.class} (#{@name}"
		stdout_logger.add level, message, "#{self.class} (#{@name}"  
end

account = BankAccount.new ('Chris Salvi')
account.deposit(500)
account.withdraw(100)

