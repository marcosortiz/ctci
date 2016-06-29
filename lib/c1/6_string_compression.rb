module StringCompression
    
    # 'aabcccccaaa' => 'a2b1c5a3'
    def self.compress(str)
        return nil if str.nil?
        return str if str.size <= 1
        
        arr = []
        compressed = false
        prev = nil
        count = 1
        index = 0
        str.each_char do |ch|
            index += 1
            curr = ch
            if prev.nil?
                prev = curr
                next
            end
            
            if prev == curr
                compressed = true
                count += 1
                if index == str.size
                    arr << prev
                    arr << count
                end
            else
                arr << prev
                arr << count
                count = 1
                if index == str.size
                    arr << curr
                    arr << count
                end
            end
            
            prev = curr
            next
        end
        
        compressed ? arr.join : str
    end
    
end