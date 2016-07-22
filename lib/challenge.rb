def empty_check(expr)
  if expr == ''
    false
  else
    true
  end
end

def calc(expr)
  return 0 if empty_check(expr) == false
  inputs = expr.split(' ')
  operation = inputs[-1]
  operating_string = ''
  inputs[0...-1].each do |x|
    operating_string += inputs[x]
    operating_string += operation
  end
  eval(operating_string)
end
