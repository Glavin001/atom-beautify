-- Ensure that that the element at i is in the right position,
-- and return a closure which can be used for continuing the sort.
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
left = left(i, vec, low, middle-1)
return self
elseif i > middle then
right = right(i, vec, middle+1, high)
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
