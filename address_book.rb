require "./contact"

class AddressBook
  attr_reader :contacts

  def initialize
    @contacts = []
  end

  

  def print_contact_list
    puts "Contact List"
    contacts.each do |contact|
      puts contact.to_s('last_first')
    end
  end
end


address_book = AddressBook.new

jason = Contact.new
jason.first_name = "Jason"
jason.last_name = "Seifer"
jason.add_phone_number("Home", "123-456-7890")
jason.add_phone_number("Word", "456-789-0123")
jason.add_address("Home", "123 Main St.", "", "Portland", "OR", "12345")

nick = Contact.new
nick.first_name = "Nick"
nick.last_name = "Pettit"
nick.add_phone_number("Home", "222-222-2222")
nick.add_address("Home", "222 Two Lane", "", "Portland", "OR", "12345")

address_book.contacts.push(jason)
address_book.contacts.push(nick)

address_book.print_contact_list
