class SchoolMailer < ActionMailer::Base
  layout 'email'
  default from: "\"Tvde\" <naoresponda@tvde.com>".freeze

  def send_token(school)
    @school = school
    headers[:"X-MC-Tags"] = "Primeiro cadastro para escola"
    mail(:to => @school.headmaster_email , :subject => 'Cadastro da sua escola no TVDE')
  end

  def send_technical_manager_email(school)
  end

  def send_headmaster_email(school)
  end

  def send_contact_email(school)
  end
end
