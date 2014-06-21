require "date_diff"

class HolidayController
	def summer_solstice
		date1 = Time.new
		date2 = Time.parse("2014-06-21")
		if date1.to_date === date2.to_date
			template = Tilt::ERBTemplate.new('erb/ss.erb')
			template.render {"YES."}
		else 
			template = Tilt::ERBTemplate.new('erb/ssno.erb')
			template.render {"NO."}
		end
	end

	def danthanhs_birthday
		date1 = Time.new
		date2 = Time.parse("2014-08-15")
		if date1.to_date === date2.to_date
			template = Tilt::ERBTemplate.new('erb/db.erb')
			template.render {"HAPPY BIRTHDAYY!"}
		else
			date1 = Time.new
			components = Date.diff(date1, Time.parse("2014-08-15"))
			template = Tilt::ERBTemplate.new('erb/dbno.erb')
			template.render {components[:difference]}
		end
	end

	def thomas_birthday
		date1 = Time.new
		components = Date.diff(date1, Time.parse("2015-01-9"))
		components[:difference]
	end

	def leap_year
		if DateTime.now.leap?
			"You betcha!"
		else
			"Nope. Maybe next year!"
		end
	end
end

