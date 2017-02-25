class Invoice
#This is a class method
  def self.print_out
    puts "Print out the invoice."
  end
#This is an instance method.
  def convert_to_pdf
    puts "converted to PDF"
  end
end


#Used for calling a class method. Will not work for an instance method.
# Invoice.print_out

#How you call an instance method, will not work on a class method.
i = Invoice.new
i.convert_to_pdf
#123
