require 'spec_helper'
require 'c1/2_check_permutation'

describe CheckPermutation do
    
    let :false_inputs do
        [
            [nil, ''], ['', nil], ['x', 'xx'],
            ['xxxxx', 'xxxx'],
            ['abcdef', 'abcdeg'],
            ['abcdef'], ['AbCdEf']
        ]
    end
    
    let :true_inputs do
        [
            ['', ''], ['x', 'x'], ['xxxxx', 'xxxxx'],
            ['abcdef', 'fedcba'],
            [' a b c d e f', 'abcdef      '],
        ]
    end
    
    

    it 'it must properly check for string uniqueness' do
        false_inputs.each do |arr|
            expect(
                CheckPermutation.is_permutation_1?(arr[0], arr[1])
            ).to be false
            expect(
                CheckPermutation.is_permutation_2?(arr[0], arr[1])
            ).to be false
        end
        true_inputs.each do |arr|
            expect(
                CheckPermutation.is_permutation_1?(arr[0], arr[1])
            ).to be true
            expect(
                CheckPermutation.is_permutation_2?(arr[0], arr[1])
            ).to be true
        end
    end

end