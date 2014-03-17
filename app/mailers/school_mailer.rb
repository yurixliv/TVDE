class SchoolMailer < ActionMailer::Base
  layout 'email'
  default from: "\"Tvde\" <naoresponda@tvde.com>".freeze

  def send_token(school)
    @school = school
    headers[:"X-MC-Tags"] = "Relatório Tendência da Vida Virtual na Educação"
    mail(:to => @school.headmaster_email , :subject => 'Relatório tvve - Tendência da Vida Virtual na Educação')
  end

  def send_technical_manager_email(school)
    @school = school
    headers[:"X-MC-Tags"] = "Relatório Tendência da Vida Virtual na Educação"
    mail(:to => @school.technical_manager_email, :cc => @school.headmaster_email, :subject => "tvve - O diretor #{@school.headmaster_name} indicou você como responsável")
  end

  def send_headmaster_email(school)
    @school = school
    headers[:"X-MC-Tags"] = "Relatório Tendência da Vida Virtual na Educação"
    mail(:to => @school.headmaster_email, :subject => "tvve - Confirmação do cadastro da sua escola")
  end

  def coordinator_email(school)
    @school = school
    headers[:"X-MC-Tags"] = "Relatório Tendência da Vida Virtual na Educação"
    mail(:to => @school.coordinator_email, :cc => @school.headmaster_email, :subject => "tvve - O diretor #{@school.headmaster_name} indicou você como coordenador pedagógico")
  end

  def send_contact_email(school)
    @school = school
    headers[:"X-MC-Tags"] = "Relatório Tendência da Vida Virtual na Educação"
    mail(:to => @school.contact_email, :subject => "tvve - Sua escola está na lista de espera.")
  end

end
