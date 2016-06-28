require 'spec_helper'
require 'c1/5_one_away'

describe '1.5' do
    
    let :not_one_way_edit do
        [
            [nil, 'xxx'],
            ['', 'xxx'],
            ['x', 'xxx'],
            ['xx', 'xxxx'],
            ['pale', 'bake'],
        ]
    end
    
    let :one_way_edit do
        [
            ['x', 'x'],
            ['xx', 'xx'],
            ['pale', 'ple'],
            ['pales', 'pale'],
            ['pale', 'bale'],
        ]
    end
    
    it 'must properly detet if two strings are one edit away from each other' do
        not_one_way_edit do |arr|
            expect(
                OneWay.is_one_edit_away?(arr[0], arr[1])
            ).to be false
            expect(
                OneWay.is_one_edit_away?(arr[1], arr[0])
            ).to be false
        end
        one_way_edit do |arr|
            expect(
                OneWay.is_one_edit_away?(arr[0], arr[1])
            ).to be true
            expect(
                OneWay.is_one_edit_away?(arr[1], arr[0])
            ).to be true
        end
    end
end
