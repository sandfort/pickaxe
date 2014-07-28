def show_regexp(string, pattern)
  match = pattern.match(string)
  if match
    "#{match.pre_match}->#{match[0]}<-#{match.post_match}"
  else
    "no match"
  end
end

# basic matching
puts show_regexp('very interesting', /t/)
puts show_regexp('Fats Waller', /lle/)
puts show_regexp('Fats Waller', /z/)

# escape patterns
puts show_regexp('yes | no', /\|/)
puts show_regexp('yes (no)', /\(no\)/)
puts show_regexp('are you sure?', /e\?/)

# anchors
str = "this is\nthe time"
puts show_regexp(str, /^the/)
puts show_regexp(str, /is$/)
puts show_regexp(str, /\Athis/)
puts show_regexp(str, /\Athe/)
puts show_regexp(str, /\bis/)
puts show_regexp(str, /\Bis/)

