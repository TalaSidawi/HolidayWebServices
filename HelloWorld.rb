require "sinatra"
require "date"
require "time"
require "./holiday_controller.rb"
require "erb"
require "tilt"

controller = HolidayController.new

get "/date" do
	time1 = Time.new
	template = Tilt::ERBTemplate.new('date.erb')
	template.render {time1}
end

get "/isitsummersolsticeyet" do 
	controller.summer_solstice
end

get "/isitdanthanhsbirthday" do
	controller.danthanhs_birthday
end

get "/howmanydaysuntilthomasbirthday" do
	controller.thomas_birthday
	# _template
end

get "/isitaleapyear" do 
	controller.leap_year
end

get "/hi/:name" do 
	@name = params[:name]
	template = Tilt::ERBTemplate.new('foo.erb')
	template.render {@name}
end
