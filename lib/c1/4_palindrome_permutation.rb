module PalindromePermutation
    
    def self.is_palindrome_permutation?(str)
        return false if str.nil? || str.size < 1
        if str.size == 1
            return !str[0].empty? && str[0] != ' '
        end
        if str.size == 2
            return str[0].downcase == str[1].downcase && !str[0].empty? && str[0] != ' '
        end
        
        
        hash = {}
        str.each_char do |ch|
            next if ch == ' '
            hash[ch.downcase] ||= 0
            hash[ch.downcase] += 1
        end
        
        odd_count = 0
        is_odd = str.size.odd?
        hash.each do |ch, count|
            if count %2 != 0
                odd_count += 1
                return false unless is_odd && odd_count == 1
            end
        end
        return true
    end
    
end