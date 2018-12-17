# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

require 'pry'


class EmailParser

    attr_accessor :emails

    @@all = []

    def initialize(emails)
        @emails = emails
    end
        

    def parse 
         list = @emails.split(" ")
         uniq_list = list.collect do |email|
                        if email.include?(",")
                            email.slice(0...-1)
                        else
                            email
                        end
                    end
        uniq_list.uniq
    end



        #if @emails.include?(",")
        #@emails.split(", ")
    #else
            #@emails.split(" ")
        #end
    
    
end


