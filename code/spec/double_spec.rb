require_relative '../double'

describe "#double_num" do
  it "doubles 0 to 0" do
    expect(double_num(0)).to eq 0
  end

  it "doubles 1 to 2" do
    expect(double_num(1)).to eq 2
  end

  it "doubles -10 to -20" do
    expect(double_num(-10)).to eq -20
  end
end
