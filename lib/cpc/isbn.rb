module Cpc
  module Isbn
    def hello_isbn
      'this is message'
    end

    def book_details(isbn_int)
      # return xml containing book details
      {
        name: "The Little Prince",
        author: 'Antoine de Saint-Expury',
        genre: 'Fantasy'
      }
    end
  end
end
