class Contact
    attr_accessor :name, :phone_number, :email
  
    def initialize(name, phone_number, email)
      @name = name
      @phone_number = phone_number
      @email = email
    end
  
    def to_s
      "#{name} - Phone: #{phone_number}, Email: #{email}"
    end
  end
  
  class ContactManager
    def initialize
      @contacts = []
    end
  
    def add_contact(name, phone_number, email)
      contact = Contact.new(name, phone_number, email)
      @contacts << contact
      puts "Contact added successfully."
    end
  
    def delete_contact(name)
      contact = find_contact_by_name(name)
      if contact
        @contacts.delete(contact)
        puts "Contact deleted successfully."
      else
        puts "Contact not found."
      end
    end
  
    def edit_contact(name)
      contact = find_contact_by_name(name)
      if contact
        puts "Enter new name:"
        new_name = gets.chomp
        puts "Enter new phone number:"
        new_phone_number = gets.chomp
        puts "Enter new email:"
        new_email = gets.chomp
  
        contact.name = new_name unless new_name.empty?
        contact.phone_number = new_phone_number unless new_phone_number.empty?
        contact.email = new_email unless new_email.empty?
  
        puts "Contact updated successfully."
      else
        puts "Contact not found."
      end
    end
  
    def display_contacts
      if @contacts.empty?
        puts "No contacts found."
      else
        @contacts.each { |contact| puts contact }
      end
    end
  
    private
  
    def find_contact_by_name(name)
      @contacts.find { |contact| contact.name.downcase == name.downcase }
    end
  end
  
  # Example usage
  contact_manager = ContactManager.new
  
  loop do
    puts "---- Contact Manager ----"
    puts "1. Add Contact"
    puts "2. Delete Contact"
    puts "3. Edit Contact"
    puts "4. Display Contacts"
    puts "5. Exit"
    print "Enter your choice: "
    choice = gets.chomp.to_i
  
    case choice
    when 1
      puts "Enter name:"
      name = gets.chomp
      puts "Enter phone number:"
      phone_number = gets.chomp
      puts "Enter email:"
      email = gets.chomp
      contact_manager.add_contact(name, phone_number, email)
    when 2
      puts "Enter name of contact to delete:"
      name = gets.chomp
      contact_manager.delete_contact(name)
    when 3
      puts "Enter name of contact to edit:"
      name = gets.chomp
      contact_manager.edit_contact(name)
    when 4
      contact_manager.display_contacts
    when 5
      break
    else
      puts "Invalid choice. Please try again."
    end
  
    puts "\n"
  end
  