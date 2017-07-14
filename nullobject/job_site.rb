# Reference: https://www.youtube.com/watch?v=DC-pQPq0acs
# Ben Orenstein - Aloha Ruby Conf 2012 - Refactoring From Good to Great

# This refactor is called: "Replace Conditional with Polimorphism"

class JobSite
  attr_reader :contact

  def initialize(location, contact)
    @location = location
    @contact = contact || NullContact # Here is the trick. having this null class
    # makes possible remove all those if conditionals. But there is a downpoint 
    # on this. If we add a new attribute here, we heed to add in the Null class 
    # as well. We need to always make them in sync.
  end

  def contact_name
    # if contact
      contact.name
    # end
  end

  def phone
    # if phone
      contact.phone
    # end
  end

  def contact_email
    # if contact
      contact.delivery_personalized_email(email_body)
    # end
  end
end

class NullContact
  def email
    'no email'
  end

  def phone
    'no phone'
  end

  def deliver_personalized_email(body) end;
end

class Contact < OpenStruct
  def deliver_personalized_email(email)
    email.deliver(name)
  end
end

