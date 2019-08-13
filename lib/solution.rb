require 'pry'

def clock_angle(time)
    # code your solution here
    time_string_array = time.split(":")
    hour = time_string_array[0].to_f
    minute = time_string_array[1].to_f
    # assume 0 degrees is at 12 o'clock, 180 degrees is at 6
    hour_angle = (hour + minute/60) * (360/12)
    minute_angle = minute * (360/60)
    angle_difference = hour_angle - minute_angle
    # binding.pry
    angle_between_hour_and_minute_hands = [360 - angle_difference, angle_difference].min
end

puts clock_angle("1:05")
puts clock_angle("9:15")
puts clock_angle("12:00")