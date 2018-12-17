# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailParser

attr_accessor :emails, :result

def initialize (emails)
  @emails = emails
end

def parse
  @result = @emails.split(/[,\s]/)
  @result.reject!(&:empty?)
  @result.uniq

end
end
