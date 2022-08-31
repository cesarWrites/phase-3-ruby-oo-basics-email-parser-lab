# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailAddressParser
    attr_accessor :email_address
    def initialize(email_address)
        @email_address = email_address
    end

    def parse
        addresses = @email_address.scan(/[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,4}/i)
        addresses.uniq
    end
end

address1 = EmailAddressParser.new("avi@test.com arel@test.com").parse
puts address1
