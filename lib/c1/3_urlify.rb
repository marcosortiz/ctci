module Urlify
    
    
    def self.replace_spaces(str, true_length)
        return nil if str.nil?
        return str if str.empty?
        
        space_count = count_spaces(str, true_length)
        return str if space_count <= 0
        
        index = true_length + space_count * 2 - 1
        arr = str.chars
        (arr.count).times do |i|
            j = true_length-i-1
            break unless j >= 0
            if arr[j] == ' '
                arr[index] = '0'
                arr[index-1] = '2'
                arr[index-2] = '%'
                index -= 3
            else
                arr[index] = arr[j]
                index -= 1
            end
        end
        arr.join
    end
    
    private
    
    def self.count_spaces(str, true_length)
        return 0 unless str && str.size > 0
        count = 0
        (true_length-1).times do |i|
            count += 1 if str[i] == ' '
        end
        return count
    end
    
end