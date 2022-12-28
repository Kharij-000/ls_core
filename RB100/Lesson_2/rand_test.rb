merge([1, 2, 3], [4, 5, 6]) # => [1, 4, 2, 5, 3, 6]

num = 0
ar1 = [1, 2, 3, 8]
ar2 = [4, 5, 6,]
ar3 = []
def merge(a, b, c)
  num = 0
  until num >= a.length() && num >= b.length()
    c.push(a[num]) if a[num] != nil 
    c.push(b[num]) if b[num] != nil 
    num = num + 1
  end
end

merge(ar1, ar2, ar3)

p ar3