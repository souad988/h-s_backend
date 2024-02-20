require 'rails_helper'

RSpec.describe Color, type: :model do
   
    subject do
        @color = Color.create(name: 'white', code: '#FFFFFF')
    end  
  it 'create a new color entry with valid arguments' do
    @color = Color.create(name: 'Blue', code: '#FFFF22')
    expect(@color).to be_valid
  end

  it 'doesnot create new color entry with invalid arguments' do
    @color = Color.create()
    expect(@color).to_not be_valid
  end  

  it 'doesnot create a new color with existing color' do
    @color = Color.create(name: 'white', code: '#FFFFFF')
    expect(@color).to_not be_valid
  end
end    