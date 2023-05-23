local science = require "modules.science"

local speed = 28000 -- KM/H
local distance = 40075 -- KM

local time = science.time(distance, speed);
print(string.format("%-10s : %-5d km", "Distance", distance))
print(string.format("%-10s : %-5d h", "Time", time))
print(string.format("%-10s : %-5d km/h", "Speed", speed))
