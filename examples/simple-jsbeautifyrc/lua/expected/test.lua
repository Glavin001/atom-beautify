-- Ensure that that the element at i is in the right position,
-- and return a closure which can be used for continuing the sort.
local a = 'a  b   c'
local b = '12345678'
local x = 1.99e-07
local c = 'a  b   c' + 'a  b   c'
local t = {
  a = 1,
  b = 2,
  c = 3,
}
if a ~= 'a' then
  local b = a
end
local e = {a = 1, b = 2}
function aaa(a, b, c)

  -- comment 1
  -- comment 2     1231
  -- comment 1     123 123 123123 12
  -- [[ comment 1    ]]
  --[[
        muli comments
            ssss
            @asdasd   sad
    ]]
  local a = -1
  return a + b - c
end
local b = {a = 1, b = [[this is two space  ;
    ]], c = 2}

function quicksorter(i, vec, low, high)
  if low >= high then
    return quicksorter
  else -- low < high
    -- partition the vector and initialize the child closures
    local middle = partition(vec, low, high)
    local left, right = quicksorter

    -- Create the promise
    local function self(i, vec, low, high)
      if i < middle then
        left = left(i, vec, low, middle - 1)
        return self
      elseif i > middle then
        right = right(i, vec, middle + 1, high)
        return self
      end
    end

    -- Force the promise until i is in the right position
    return self(i, vec, low, high)
  end
end

function lazysort(vec, low, high)
  local sorter = quicksorter
  return function(i)
    sorter = sorter(i, vec, low, high)
    return vec[i]
  end
end
