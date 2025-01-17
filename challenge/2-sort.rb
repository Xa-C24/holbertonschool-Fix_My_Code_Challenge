###
#
#  Sort integer arguments (ascending) 
#
###

result = []
ARGV.each do |arg|
    # Skip if not an integer
    next unless arg =~ /^-?\d+$/

    # Convert to integer
    i_arg = arg.to_i

    # Insert the integer into the sorted result array
    inserted = false
    result.each_with_index do |val, idx|
        if i_arg < val
            result.insert(idx, i_arg)
            inserted = true
            break
        end
    end
    result << i_arg unless inserted
end

puts result
