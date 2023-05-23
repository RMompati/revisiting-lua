local science = {};

function science.distance(speed, time)
  return speed * time;
end

function science.speed(distance, time)
  return distance / time;
end

function science.time(distance, speed)
  return distance / speed;
end

return science;