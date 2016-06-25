require 'spec_helper'
require 'c1/1_is_unique'

describe Unique do
    
    let :input do
        {
            nil => true,
            '' => true,
            'x' => true,
            'xx' => false,
            'xxx' => false,
            'abcdef' => true,
            'abcdeff' => false
        }
    end
    
    

    it 'it must properly check for string uniqueness' do
        input.each do |str, is_unique|
            expect(Unique.is_unique_1?(str)).to eq is_unique
            expect(Unique.is_unique_2?(str)).to eq is_unique
        end
    end

end