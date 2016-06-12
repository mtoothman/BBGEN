describe "permutation" do
  it "should do something cool" do
    permutations = ('A'..'Z').to_a
    all_permutations = permutations.repeated_permutation(5)
    all_permutations.next.should == ['A', 'A', 'A', 'A', 'A']
  end
end
