require "simplecov"
SimpleCov.start
require "pry"
require_relative "../code"

# YOUR TEST CODE HERE
RSpec.describe "perimeter" do
  it "returns 20 for a square with a width of 5" do
    expect(perimeter(5)).to eq(20)
  end

  it "returns 30 for a rectangle with a width of 5 and a length of 10" do
    expect(perimeter(5, 10)).to eq(30)
  end
end

RSpec.describe "average" do
  it "returns 80 for an average grades with grades of 70, 80, 90 for size of 3" do
    grade_list = [70, 80, 90]
    expect(average(grade_list)).to eq(80)
  end
end

RSpec.describe "rankings" do
  it "should return students with rankings" do
    students = ["David", "Kevin", "Mike"]
    expect(rankings(students)).to eq("1. David\n2. Kevin\n3. Mike\n")
  end
end

RSpec.describe "greet" do
  it "should return a name and greeting word in spanish" do
    expect(greet("Kevin", "spanish")).to eq("Hola Kevin!")
  end

  it "should return a name and greeting word in italian" do
    expect(greet("Kevin", "italian")).to eq("Ciao Kevin!")
  end

  it "should return a name and greeting word in french" do
    expect(greet("Kevin", "french")).to eq("Bonjour Kevin!")
  end

  it "should return a name and greeting word in englihsh if there is no given language input" do
    expect(greet("Kevin")).to eq("Hi Kevin!")
  end
end

RSpec.describe "create_puzzle" do
  it "should return a word with guessed letters" do
    expect(create_puzzle("beach", "e, b"))
  end

  it "should return empty string with underscore" do
    expect(create_puzzle("beach", "q, t"))
  end
end

RSpec.describe "divisible_by_three" do
  it "should return true if it is divisible by 3" do
    expect(divisible_by_three(15)).to eq(true)
  end
end

describe "perfect_square?" do
  it "should return true if it is a perfect number" do
    expect(perfect_square?(16)).to eq(true)
  end

  it "should return false if it is not a perfect number" do
    expect(perfect_square?(17)).to eq(false)
  end

  it "should give an error if input number is less than 1" do
    expect(perfect_square?(0)).to raise_error(ArgumentError)
  end
end
