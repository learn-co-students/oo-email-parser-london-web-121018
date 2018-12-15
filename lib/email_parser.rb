# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
require 'pry'

class EmailParser
  attr_accessor :emails
  @@all = []

  def self.all
    @@all
  end

  def initialize(email_string)
    @emails = email_string
    self.class.all << self
  end

  def parse
    email_order = self.emails
    email_arr = email_order.split(/[\s,]+/)
    email_arr.uniq
  end

end

#Test method
emails = "john@doe.com, person@somewhere.org kdjbalifb@gmail.com"
parser = EmailParser.new(emails)
parser2 = EmailParser.new("ljbkzlc@gmail.com k`jdb@uwclub.net")

binding.pry
