MAX_COUNT = 128

module Unique
    def self.all_unique_1?(str)
        return true if str.nil? ||str.size <= 1
        return false if str.size > MAX_COUNT
        hash = {}
        str.each_char do |ch|
            hash[ch] ||= 0
            hash[ch] += 1
            return false if hash[ch] > 1
        end
        return true
    end
    
    def self.all_unique_2?(str)
        return true if str.nil? ||str.size <= 1
        str.size.times do |i|
            break if i+1 > str.size
            return false if str[i] == str[i+1]
        end
        return true
    end
end

[nil, '', 'x', 'xx', 'xxx', 'abcdef', 'abcdeff'].each do |str|
    puts "#{str.inspect}: 1=#{Unique.all_unique_1?(str)}, 2=#{Unique.all_unique_2?(str)}"
end