class HolidayController
	def summer_solstice
		date1 = Time.new
		date2 = Time.parse("2014-06-21")
		if date1.to_date === date2.to_date
			"YES."
		else 
			"NO."
		end
	end

	def danthanhs_birthday
		date1 = Time.new
		date2 = Time.parse("2014-08-15")
		if date1.to_date === date2.to_date
			"HAPPY BIRTHDAYY!"
		else
			"NAW."
		end
	end

	def thomas_birthday
		date1 = Date.new
		components = Date.diff(date1, Date.parse("2015-01-9"))
	end
end


