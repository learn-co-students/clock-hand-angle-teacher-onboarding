def clock_angle(time)
  hour, minute = time.split(":").map { |n| n.to_f }
  hour = (hour == 12) ? 0 : hour

  degrees = ((minute * 6) - (hour * 30 + minute / 2)).abs
  degrees == 180 ? 180 : degrees % 180
end
