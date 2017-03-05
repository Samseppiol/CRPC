require 'rubygems'
require 'decisiontree'

attributes = ['Temp']

#Just creating some random data
training = [
  [98.7, 'healthy'],
  [99.1, 'healthy'],
  [99.5, 'sick'],
  [100.5, 'sick'],
  [102.5, 'crazy sick'],
  [107.5, 'dead'],
]

#create our decision tree
dec_tree = DecisionTree::ID3Tree.new(attributes, training, 'sick', :continuous)

#train is a method from decision tree, essentially what it does is takes in all the values and checks the results.
dec_tree.train

#Now set up the data we actually want to test

test = [98.7, 'healthy']

decision = dec_tree.predict(test)

puts "Prediction: #{decision}"

puts "Reality #{test.last}"
