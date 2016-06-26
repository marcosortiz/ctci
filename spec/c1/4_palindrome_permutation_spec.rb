require 'spec_helper'
require 'c1/4_palindrome_permutation'

describe '1.4' do
    
    let :not_palindrome_strings do
        [
            nil, '',' ', '  ', 'ab', 'abc',
        ]
    end
    
    let :palindrome_strings do
        [ 
            'a', 'aa', 'aaa', 'aaaa', 'aba', 'abab', 'abcdabcd', 'abcdeabcd',
            'A', 'Aa', 'AaA', 'aAaA', 'AbA', 'AbaB', 'ABCDabcd', 'ABCDeabcd'
        ]
    end
    
    it 'must properly detect strings palindrome permutations' do
        not_palindrome_strings.each do |str|
            expect(
                PalindromePermutation.is_palindrome_permutation?(str)
            ).to be false
        end
        palindrome_strings.each do |str|
            expect(
                PalindromePermutation.is_palindrome_permutation?(str)
            ). to be true
        end
    end

end