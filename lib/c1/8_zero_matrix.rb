module ZeroMatrix

    def self.solution1(matrix)
        return if matrix.nil?
        return unless matrix.is_a?(Array)
        return if matrix.empty?
        return unless matrix.first.is_a?(Array)
        return if matrix.first.empty?

        m = matrix.count
        n = matrix.first.count
        
        hash = zeros_hash(matrix)
        hash[:rows].each do |i|
            n.times do |j|
                matrix[i][j] = 0
            end
        end
        hash[:cols].each do |j|
            matrix.each do |row|
                row[j] = 0
            end
        end
        
        matrix
    end
    
    private
    
    def self.zeros_hash(matrix)
        hash = {rows: [], cols: []}
        matrix.each_with_index do |row, i|
            row.each_with_index do |col, j|
                next if hash[:cols].include?(j)
                if matrix[i][j] == 0
                    hash[:cols] << j
                    hash[:rows] << i unless hash[:rows].include?(row)
                end
            end
        end
        hash
    end
end