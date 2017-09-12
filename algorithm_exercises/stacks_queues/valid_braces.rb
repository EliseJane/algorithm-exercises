def is_valid(s)
  stack = []
  s.each_char do |char|
    if /[\[({]/.match(char)
      stack.push(char)
    elsif /[\])}]/.match(char)
      if stack.empty?
        return false
      elsif stack[-1] == opening_brace(char)
        stack.pop
      else
        return false
      end
    end
  end
  return true if stack.empty?
  return false
end

def opening_brace(brace)
  return "(" if brace == ")"
  return "[" if brace == "]"
  return "{" if brace == "}"
end

p is_valid("this is (kinduv) ok, [ { totally artificail} but whatver].")
p is_valid("[angkbiehgl")
p is_valid("}sdgib()")
p is_valid("alkd(falsirng]alsdg")
