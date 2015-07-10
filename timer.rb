class Timer

	def initialize
		@seconds = 0
	end

	def seconds=(time)
		$converted_time = Time.at(time).utc.strftime("%H:%M:%S")
		def time_string
			"#{$converted_time}"
		end
	end

	def seconds 
		@seconds
	end
	
end

