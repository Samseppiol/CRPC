require 'rubygems'
require 'decisiontree'

# 1 means they are a customer, 0 means they arenbt.
attributes = ['Age', 'Education', 'Income', 'Marital Status']
training = [
['36-55', 'Masters', 'High', 'Single', 1],
['18-35', 'High School', 'Low', 'Single', 0],
['36-55', 'Masters', 'High', 'Single', 1],
['18-35', 'PhD', 'High', 'Married', 1],
['< 18', 'High School', 'Low', 'Single', 1],
['55+', 'High School', 'High', 'Married', 0],
['55+', 'High School', 'High', 'Married', 1],
['55+', 'High School', 'High', 'Married', 1],
['55+', 'High School', 'High', 'Married', 1],
['< 18', 'Masters', 'Low', 'Single', 0],

]

dec_tree = DecisionTree::ID3Tree.new(attributes, training, 1, :discrete)
#Calls the train method on our newlty created decision tree
dec_tree.train

#Lets say we have someone under 18 and High school education , low income and single

# test = ['< 18', 'High School', 'Low', 'Single'] - #This will predict 1 which means this should be a customer.

#this will predict zero, they should not be a customer.
test = ['18-35', 'High School', 'Low', 'Married']

decision = dec_tree.predict(test)
puts "Predicted: #{decision}"
