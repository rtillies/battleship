# Richard Tillies
# October 12, 2021
# Card testing class
# ~/turing/1module/projects/battleship/spec/ship_spec.rb

require 'rspec'
require './lib/ship'

RSpec.describe Ship do
  before :each do
    @cruiser = Ship.new("Cruiser", 3)
  end

  it 'exists' do
    expect(@cruiser).to be_instance_of(Ship)
  end

  it '#name' do
    expect(@cruiser.name).to eq("Cruiser")
  end

  it '#length' do
    expect(@cruiser.length).to eq(3)
  end

  it '#health' do
    expect(@cruiser.health).to eq(3)
  end

  it '#sunk?' do
    expect(@cruiser.sunk?).to eq(false)
  end

  it '#health after 1 hit' do
    @cruiser.hit
    expect(@cruiser.health).to eq(2)
  end

  it '#sunk? after 1 hit' do
    @cruiser.hit
    expect(@cruiser.sunk?).to eq(false)
  end

  it '#health after 2 hits' do
    @cruiser.hit
    @cruiser.hit
    expect(@cruiser.health).to eq(1)
  end

  it '#sunk? after 2 hits' do
    @cruiser.hit
    @cruiser.hit
    expect(@cruiser.sunk?).to eq(false)
  end

  it '#health after 3 hits' do
    @cruiser.hit
    @cruiser.hit
    @cruiser.hit
    expect(@cruiser.health).to eq(0)
  end

  it '#sunk? after 3 hits' do
    @cruiser.hit
    @cruiser.hit
    @cruiser.hit
    expect(@cruiser.sunk?).to eq(true)
  end
end
