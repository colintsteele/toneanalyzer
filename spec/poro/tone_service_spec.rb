require_relative '../../app/poros/tone_service'
require 'spec_helper'

describe 'ToneService' do

  before :each do
    @ts = ToneService.new('Any Text will do!')
  end

  it 'got credentials for IBM' do
    expect(Keys::BLUE_USER).not_to be_nil
    expect(Keys::BLUE_KEY).not_to be_nil
  end

  it 'Got a 200 response from IBM' do
    expect( @ts.get.code ).to match('200')
  end

end