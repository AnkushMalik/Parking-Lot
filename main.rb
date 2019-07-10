#main file

require_relative 'lib/commands/parent.rb'
Dir["./lib/*.rb"].each {|file| require_relative file }
Dir["./lib/commands/*.rb"].each {|file| require file }

class Main
	def initialize
		@controller = Controller.new
		@commands = {
			'create_parking_lot' => CreateParkingLot.new(@controller),
			'park' => Park.new(@controller)
		}
	end

	def read_and_execute(str)
		args = str.split(' ')
		cmd_name = args[0]
		cmd_args = args[1..args.length]
		@commands[cmd_name].execute(cmd_args)
	end

	def call
		while true
			cmd = gets()
			read_and_execute(cmd)
		end
	end
end

a = Main.new
a.call
