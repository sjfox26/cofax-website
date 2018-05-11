class Message < MailForm::Base
  attribute :name,            :validate => true
  attribute :email,           :validate => /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  attribute :phone_number,    :validate => true
  attribute :nickname,        :captcha => true  #to catch spam
  attribute :body#,            :validate => true

  def headers
    {
        :subject => "Contact Form",
        :to => "cofaxtom@gmail.com",
        :from => %("#{name}" <#{email}>)
    }
  end
end