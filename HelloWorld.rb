require "sinatra"
require "date"
require "time"
require "./holiday_controller.rb"
require "date_diff"
controller = HolidayController.new

get "/hello" do 
	"herro"
end

get "/date" do
	time1 = Time.new
	"The date and time is : " + time1.inspect
end

get "/isitsummersolsticeyet" do 
	controller.summer_solstice
end

get "/isitdanthanhsbirthday" do
	controller.danthanhs_birthday
end

get "/howmanydaysuntilthomasbirthday" do
	controller.thomas_birthday
end

# get "/isitaleapyear" do 
# 	date1 = Date.new(2008).leap?
# 	date1.inspect
# end
# date1 = Date.new
# 	if date1.leap? === true
# 		"You betcha!"
# 	else
# 		"Maybe next year!"
# 	end
# end