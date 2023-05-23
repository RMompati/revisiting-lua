--[[ First Lua Program ]]
print("Hello, World!");

--[[ Lua Keywords ]]
--[[ 
  and       break     do      else
  elseif    end       false   for
  function  if        in      local
  nil       not       or      repeat
  return    then      true    until
  while
 ]]

--[[ Variables In Lua ]]
--[[ Variable Scopes
      - Global Variables  - All variables are global unless explicitly declared as local.
      - Local Variables   - The variable scope is limited to the function.
      - Table Fields      - This can hold anything except nil.
  ]]

-- Variable Definition
local a, b

-- Initialization
a = 10;
b = 30;

print("Value of a: ", a)
print("Value of b: ", b)

-- Swapping variables
b, a = a, b;

print("Value of a: ", a)
print("Value of b: ", b)

local f = 70.0/3.0
print("Value of f: ", f)

--[[ Lvalues and Rvalues in Lua ]]
--[[ Expressions in Lua
        - lvalue  - Expressions that refer to a memory location is called "lvalue" expression.
                    An lvalue may appear as either the left-hand or right-hand side of the assignment.
        - rvalue  - Referes to a data value stored in some memory. They only appear on the right-hand
                    side of an assignment.

]]

--[[ Data Types ]]
--[[ 
  nil       - value has no data.
  boolean   - true and false values.
  number    - real and/or double precision floating point numbers.
  string    - Represents an array of characters.
  function  - Method writen in C or Lua.
  userdata  - Represents arbitrary C data.
  thread    - Represents independent threads of execution and used to implement coroutines.
  table     - Represents ordinary arrays, symbol tables, sets, records, graphs, trees, etc.
]]

--[[ Loops ]]

--[[ While Loop

    Syntax
      while (condition)
      do
        statement(s)
      end
]]

print("While Loop")
while (a < 35) do
  print("Value of a: ", a);
  a = a + 1;
end

--[[ For Loop
    Syntax
      for init,max/min value, increment
      do
        statement(s)
      end
    
    The "init" step is executed first, and only once.
    The minimum or maximum value till which the loop continues to execute.
    The body of the loop is executed and we jump back to the increment/decrement.
    The condition is evaluated again.
]]

print("For Loop")
for i = 3,1,-1
do
  print("value of : ", i)
end

--[[ Repeat...Until Loop

    Syntax
      repeat
        statement(s)
      until (condition)
]]

print("Repeat...Until Loop")
repeat
  print("Value of b: ", b);
  b = b + 2;
until (b > 15)

--[[ Loop Control Statement

  break statement.

  Usage

  for i = 0,10,1
  do
    if (i == 5)
    then
      break;
    end
]]

--[[ Decision Making in Lua ]]

--[[ If Statement

    Syntax
    if (condition)
    then
      statement(s)
    end
  
  If...Else Statement
    Syntax
      if (condition)
      then
        statement(s)
      else
        statement(s)
      end

    
    Syntax
      if (condition)
      then
        statement(s)
      elseif (condition)
      then
        statement(s)
      elseif (condition)
      then
        statement(s)
      else
        statement(s)
      end

]]

--[[ Functions ]]

--[[ Defining a Function

      function_scope? function function_name (args...)
        <function_body>
        <return value/(value_0, value_1,..., value_n)>?
      end
]]

print("\nLua Functions\n")
function Max(first, second)
  if (first > second)
  then
    return first;
  else
    return second;
  end
end

print("Max of a, b: ", Max(a, b))
print("Max of 10, -10 is ", Max(10, -10))

--[[ Assigning and Passing functions ]]
Print_ = function (arg)
  print("Custom print: \"", arg, "\"")
end

function Add(first, second, print_)
  local result = first + second;
  print_(result);
end

Add(12, -1, Print_)

--[[ Function with Variable Argument ]]
function Average(...)
  local result = 0;
  local args = {...};
  for i, v in ipairs(args) do
    result = result + v;
  end

  return result;
end

print("Average is :: ", Average(1, 2, 3, 4, 58))


print("\nLua Strings\n")

String_1 = "Lua";
print("\"String 1 is \"", String_1)
String_2 = "Tutorial";
print("\"String 1 is \"", String_2)
String_3 = [["Lua Tutorial"]];
print("\"String 1 is \"", String_3)

print(String_1 .. " " .. String_2)


print("\nLua Arrays\n")

Array = {"Lua", "Tutorial"};

for i=1, 2 do
  print(Array[i])
end
