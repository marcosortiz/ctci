require 'spec_helper'
require 'c1/3_urlify'

describe Urlify do
    
    let :no_spaces_strings do
        {
            nil => 0,
            '' => 0,
            'a' => 1,
            'ab' => 2,
            'abc' => 3
        }
    end
    
    let :strings_with_spaces do
        {
            'Mr John Smith    ' =>  13,
        }
    end
    
    def expected(str)
        return nil if str.nil?
        new_str = str.strip
        new_str.gsub(' ', '%20')
    end
    
    def check(str, true_length)
        expect(
            Urlify.replace_spaces(str, true_length)
        ).to eq expected(str)
    end

    it 'it must properly urlify strings' do
        no_spaces_strings.each do |str, true_length|
            check(str, true_length)
        end
        strings_with_spaces.each do |str, true_length|
            check(str, true_length)
        end
    end

end