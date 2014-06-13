require "sinatra"
require "date"
require "time"
require "./holiday_controller.rb"

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

get "/isitaleapyear" do 
	controller.leap_year
end
