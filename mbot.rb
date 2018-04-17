require 'discordrb'
bot = Discordrb::Commands::CommandBot.new token: 'Mjg5NDc1NDExNjUyNjQwNzY4.Dbc3rQ.Jc_SZeGhyczgdjdJWJO--rb8QPY', client_id: '289475411652640768', prefix: '!'
## Freedom commands

	# Horsepower
bot.command :hp do |_event, arg|
	"#{arg.to_i} horsepower is #{(arg.to_i * 0.745699872).round(2)} kilowatts."
end

	# Miles per gallon
bot.command :mpg do |_event, arg|
	"#{arg.to_f} miles per gallon is #{(235.21458329475 / arg.to_f).round(2)} litres per 100 kilometers."
end

# Miles
bot.command :mi do |_event, arg|
        "#{arg.to_i} miles is #{(1.609344 * arg.to_i).round(2)} kilometres."
end

## Commie commands

	# Kilowatts
bot.command :kw do |_event, arg|
	"#{arg.to_i} kilowatts is #{(arg.to_i / 0.745699872).round(2)} horsepower."
end

	# Litres per 100 kilometers
bot.command :kml do |_event, arg|
        "#{arg.to_f} litres per 100 kilometers is #{(235.21458329475 / arg.to_f).round(2)} miles per gallon."
end

	# Kilometers
bot.command :km do |_event, arg|
        "#{arg.to_i} kilometers is #{(arg.to_i / 1.609344).round(2)} kilometres."
end

	## Help
bot.command :help do |_event|
	"The commands to convert measurements are: !hp, !mpg, !mi, !kw, !kml, !km"
end

bot.run
