require 'spec_helper'

describe ::Enumerable do
  let!(:arr) {[1,2,3]}
  let!(:arr2) {[2,4,6]}

  it "should alias 🗺 to `map`" do
    expect(arr.🗺{|n| n * 2}).to eq arr.map{|n| n * 2}
  end

  it "should alias 💉 to `inject`" do
    expect(arr.💉(:+)).to eq arr.inject(:+)
  end

  it "should alias 🔍 to `detect`" do
    expect(arr.🔍{|n| n == 3}).to eq arr.detect{|n| n == 3}
    expect(arr.🔍{|n| n == 9}).to eq arr.detect{|n| n == 9}
  end

  it "should alias 🤐 to `zip`" do
    expect(arr.🤐(arr2)).to eq arr.zip(arr2)
  end
end
