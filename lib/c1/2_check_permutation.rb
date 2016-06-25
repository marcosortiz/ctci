module CheckPermutation
    
    def self.is_permutation_1?(str1, str2)
        sorted_str1 = str1.chars.sort.join(',') rescue nil
        sorted_str2 = str2.chars.sort.join(',') rescue nil
        
        return false if sorted_str1.nil? || sorted_str2.nil?
        return false if sorted_str1.size != sorted_str2.size
        
        sorted_str1 == sorted_str2
    end
    
    def self.is_permutation_2?(str1, str2)
        return false if str1.nil? || str2.nil?
        return false if str1.size != str2.size
        
        hash1 = process_counts(str1)
        hash2 = process_counts(str2)        
        return false if hash1.keys.count != hash2.keys.count

        hash1.keys.each do |ch|
            return false unless hash1[ch] == hash2[ch]
        end
        
        return true
    end
    
    private
    
    def self.sort(str)
        str.chars.sort.join(',') rescue nil
    end
        
    def self.process_counts(str)
        hash = {}
        str.each_char do |ch|
            hash[ch] ||= 0
            hash[ch] += 1
        end
        hash
    end
    
end