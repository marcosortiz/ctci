module OneAway

    def self.is_one_edit_away?(str1, str2)
        return false if str1.nil? || str2.nil?
        return true if str1 == str2
        return false  if (str1.size - str2.size).abs > 1
        
        count = 0
        i = 0
        
        if str1.size == str2.size
            # we can only edit 1 character on str1 (or str2)
            str1.each_char do |ch|
                if ch != str2[i]
                    count += 1
                end
                return false if count > 1
                i += 1
            end
        else
            first_string = str1.size > str2.size ? str1 : str2
            second_string = str1.size < str2.size ? str1 : str2
            
            # we can only remove 1 character from first_string
            first_string.each_char do |ch|
                if ch != second_string[i]
                    count += 1 
                    return false if count > 1
                    next
                end
                i += 1
            end

        end
        
        return true
    end
    
end