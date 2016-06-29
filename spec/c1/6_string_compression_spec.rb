require 'spec_helper'
require 'c1/6_string_compression'

describe '1.6' do
    
    let :uncompressable_strings do
        [
            nil,
            '',
            'a',
            'abcdef'
        ]
    end
    
    let :compressable_strings_hash do
        {
            'aa' => 'a2',
            'aabbb' => 'a2b3',
            'aabbbccccddddd' => 'a2b3c4d5',
            'aabcccccaaa' => 'a2b1c5a3',
            'aaabaaabaaab' => 'a3b1a3b1a3b1',
        }
    end
    
    it 'must properly compress the strings' do
        uncompressable_strings.each do |str|
            expect(
                StringCompression.compress(str)
            ).to eq str
        end
        compressable_strings_hash.each do |str, comp_str|
            expect(
                StringCompression.compress(str)
            ).to eq comp_str
        end
    end
end
