require 'pry'

# holiday_hash = {
#   :winter => {
#     :christmas => ["Lights", "Wreath"],
#     :new_years => ["Party Hats"]
#   },
#   :summer => {
#     :fourth_of_july => ["Fireworks", "BBQ"]
#   },
#   :fall => {
#     :thanksgiving => ["Turkey"]
#   },
#   :spring => {
#     :memorial_day => ["BBQ"]
#   }
# }

def second_supply_for_fourth_of_july(holiday_hash)
  holiday_hash[:summer][:fourth_of_july].last
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  winter = holiday_hash[:winter]
  winter.each_key { |holiday| winter[holiday] << supply }
end

def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring][:memorial_day] << supply
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array
end

def all_winter_holiday_supplies(holiday_hash)
  holiday_hash[:winter]
    .values
    .flatten
    .reduce([]) { |a, e| a << e }
end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each_pair do |season, holidays|
    puts "#{season.capitalize}:"

    holidays.each_pair do |holiday, supplies|
      holiday  = holiday.to_s.split('_').map(&:capitalize).join(' ')

      supplies = supplies.join(', ')

      puts "  #{holiday}: #{supplies}"
    end
  end
end

def all_holidays_with_bbq(holiday_hash)
  holiday_hash.values.each_with_object([]) do |holidays, bbq_holidays|
    holidays.each_pair do |holiday, supplies|
      bbq_holidays << holiday if supplies.include?('BBQ')
    end

    bbq_holidays
  end
end
