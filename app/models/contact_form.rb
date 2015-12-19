class ContactForm < MailForm::Base
  attributes :first_name, :validate => true
  attributes :last_name, :validate => true
  attributes :email, :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attributes :message

  def headers
    {
      :subject => "edenhibbert.com contact form",
      :to => "edenhibbert@gmail.com",
      :from => %("#{first_name}" <#{email}>)
    }
  end
end
