# 360 degrees total, moves 30 degrees per hour
# Every minute it moves 30/60 degrees, or half a degree
# A minute is 60 seconds. 1/2 divided by 60 is 1/120.

def clock_angle(time)
  h_string, m_string = time.split(":")
  hours = h_string.to_f
  minutes = m_string.to_f
  total_minutes_in_one_hour = 60
  total_degrees_in_circle = 360
  degrees_per_hour = 30

  minute_degrees = (minutes / total_minutes_in_one_hour) * total_degrees_in_circle
  full_hour_degrees = hours * degrees_per_hour
  partial_hour_degrees = (minute_degrees / total_degrees_in_circle) * degrees_per_hour
  hour_degrees = full_hour_degrees + partial_hour_degrees
  degrees = hour_degrees - minute_degrees

  [degrees, total_degrees_in_circle - degrees].min
end
