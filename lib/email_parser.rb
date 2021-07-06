# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

require 'pry'
class EmailParser
    attr_reader :emails

    def initialize(emails)
        @emails = emails
    end

    def parse
        delimitars = [' ', ', ']
        seperatedemails = @emails.split(Regexp.union(delimitars))
        seperatedemails.uniq!
        seperatedemails
    end

end