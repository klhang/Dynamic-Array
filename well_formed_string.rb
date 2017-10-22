def well_formed?(str)
  left_chars = []

  lookups = {'('=> ")", '{'=> "}", '['=> "]"}

  str.chars.each do |char|
    if lookups.keys.include?(char)
      left_chars << char
    elsif left_chars.length== 0 || lookup[left_chars.pop] != char
      return false
    end
  end
  return left_chars.empty?
end

wanted order = []{}();
good example = ([]){()};
bad example = [(]{)};
