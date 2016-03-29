module ContactsHelper
  def contacts_formatted(contacts)
    contacts.map {|c| c.name}.to_sentence
  end
end
