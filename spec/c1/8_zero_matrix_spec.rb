require 'spec_helper'
require 'c1/8_zero_matrix'

describe '1.8' do
    
    let :invalid_matrixes do
        [
            1, 1.0, '1', {}, [], [[]],
        ]
    end
    let :valid_matrixes do
        [
            {
                input:
                    [
                        [0, 1, 2, 3],
                        [4, 5, 6, 7],
                        [8, 9, 0, 1],
                    ],
                output:
                    [
                        [0, 0, 0, 0],
                        [0, 5, 0, 7],
                        [0, 0, 0, 0],
                    ]
            },
            {
                input:
                    [
                        [0, 1, 2, 3, 4],
                        [5, 6, 7, 8, 9],
                        [0, 1, 2, 3, 4],
                        [5, 6, 7, 8, 9],
                        [0, 1, 2, 3, 4],
                    ],
                output:
                    [
                        [0, 0, 0, 0, 0],
                        [0, 6, 7, 8, 9],
                        [0, 1, 2, 3, 4],
                        [0, 6, 7, 8, 9],
                        [0, 1, 2, 3, 4],
                    ]
            }
        ]
    end
    
    it 'must properly zero the matrix' do
        invalid_matrixes.each do |matrix|
            expect(ZeroMatrix.solution1(matrix)).to be nil
        end
        valid_matrixes.each do |hash|
            expect(ZeroMatrix.solution1(hash[:input])).to eq(hash[:output]) 
        end
    end
end