#main file

require_relative 'lib/commands/parent'
Dir["./lib/*.rb"].each {|file| require_relative file }
Dir["./lib/commands/*.rb"].each {|file| require file }

class Main
	def initialize
		@controller = Controller.new
	end

	def call
	end
end