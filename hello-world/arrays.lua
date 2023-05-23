--[[ Multi-Dimensional Arrays ]]

print("\nLua n-D Arrays\n")
-- Initializing the array.
local array = {};

for i = 1, 3 do
  array[i] = {};

  for j = 1, 3 do
    array[i][j] = i * j;
  end
end

for r = 1, 3 do
  for c = 1, 3 do
    print(string.format("array[%d][%d] : %d", r, c, array[r][c]))
  end
  print();
end

array = nil
array = {};

local maxRows, maxColumns = 3, 3

for row = 1, maxRows do
  for col = 1, maxColumns do
    array[row * maxColumns + col] = row * col;
  end
end

for row = 1, maxRows do
  for col = 1, maxColumns do
    print(string.format("array[%d] : %d", row * maxColumns + col, array[row * maxColumns + col]))
  end
end


print("\nLua Iterators\n")

array = {"Lua", "Tutorial"};

--[[ Generic For Iterator ]]
for key, value in ipairs(array) do
  print(key, value)
end

--[[ Stateless Iterators ]]

local function square(iteratorMaxCount, currentNumber)
  if (currentNumber < iteratorMaxCount)
  then
    currentNumber = currentNumber + 1;
    return currentNumber, currentNumber*currentNumber;
  end
end

for i, n in square, 3, 0
do
  print(i, n)
end

local function squares(iteratorCount)
  return square, iteratorCount, 0
end

for i, n in squares(3)
do
  print(i, n)
end

--[[ Stateful Iterators ]]

local function elementIterator(collection)
  local index = 0;
  local count = #collection;

  -- The closure function is returned.
  return function ()
    index = index + 1;

    if index <= count
    then
      -- return the current element of the iterator.
      return collection[index];
    end
  end
end

for elment in elementIterator(array)
do
  print(elment)
end
