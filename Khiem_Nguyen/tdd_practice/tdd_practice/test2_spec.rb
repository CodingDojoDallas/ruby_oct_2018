require_relative 'fixnum'
RSpec.describe Fixnum do
  describe "my_upto(num)" do
    it "performs block of code from self up to num amount of times" do
      output = []
      1.my_upto(5) do |i|
        output << i
      end
      expect(output).to eq([1, 2, 3, 4, 5])
    end
  end
  describe "my_times" do
    it "performs the block of code self many times" do
      output = []
      5.my_times { |i| output << "hello#{i}" }
      expect(output).to eq(["hello1","hello2","hello3","hello4","hello5"])
    end
  end
end
