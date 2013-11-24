class SAAP
	require 'rubygems'
	require 'serialport'

	def initialize(port_name, baud_rate)
		@port_name = port_name
		@baud_rate = baud_rate
	end

	def connect
	  puts SerialPort.instance_methods(false)
	  
		@sp = SerialPort.new(@port_name, @baud_rate, 8, 1, SerialPort::NONE)
	end
	
	def register_command(cmd,callback)
	    
	end

	def receive
		while true do
			sp_char = @sp.getc
			if sp_char
				printf("%c", sp_char)
			end
		end
	end

end

if __FILE__ == $0
	saap = SAAP.new('COM17',115200)
    saap.connect()
    #saap.receive()
end