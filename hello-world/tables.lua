--[[ Tables in Lua ]]

-- Simple table initialization
local myTable = {};

-- Simple table value assignment
myTable[1] = "Lua";

-- Removing reference
myTable = nil;

-- Lua garbage collection will take care of releasing memory.


myTable = {};
print("Type of myTable is ", type(myTable))

myTable[1] = "Lua"
myTable["wow"] = "Tutorial"

for i, value in pairs(myTable) do
  print(string.format("%-5s", i), value);
end

myTable["wow"] = nil;

for i, value in pairs(myTable) do
  print(string.format("%-5s", i), value);
end

local function display(tab, str)
  for i, value in pairs(tab) do
    print(string.format(str, i), value);
  end
end

local fruits = {"Banana", "Orange", "Apple"};

print("Concatenated string :: ", table.concat(fruits, ", "))
print("Concatenated string :: ", table.concat(fruits, ", ", 2, 3))
table.insert(fruits, "Mango")
print(":: Updated Table :: ")
display(fruits, "%-3s");
table.insert(fruits, 2, "Grapes")
print(":: Updated Table :: ")
display(fruits, "%-3s");
print(":: Sorted Table :: ")
table.sort(fruits)
display(fruits, "%-3s");