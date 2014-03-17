require 'securerandom'
# require 'route53'
class School < ActiveRecord::Base
  CONTACT_FIELD = [:contact_name, :contact_email]
  # validations
  # validates                     :contact_email, presence: true
  # hooks
  before_create :add_token_for_pre_selected_schools
  after_save :send_emails
  before_save :set_confirmed

  # instance methods

  def send_emails
    debugger
    if has_token? && confirmed?
      SchoolMailer.send_headmaster_email(self).deliver
      SchoolMailer.send_technical_manager_email(self).deliver
      SchoolMailer.coordinator_email(self).deliver
    elsif has_token?
      SchoolMailer.send_token(self).deliver
    else
      SchoolMailer.send_contact_email(self).deliver
    end
  end

  private

  def add_token_for_pre_selected_schools
    if dont_need_to_evaluate? && !has_token?
      begin
        self.token = SecureRandom.hex[0,9].upcase
      end while self.class.exists?(token: token)
    end
  end

  def set_confirmed
    self.confirmed_at = Time.now if has_token? && !confirmed?
  end

  def dont_need_to_evaluate?
    dont_have_contact_field? && dont_have_namespace?
  end

  def dont_have_contact_field?
    ( CONTACT_FIELD & @changed_attributes.keys.map(&:to_sym) ).blank?
  end

  def dont_have_namespace?
    ( [:namespace] & @changed_attributes.keys.map(&:to_sym) ).blank?
  end

  def has_token?
    self.token.present?
  end

  def confirmed?
    self.confirmed_at.present?
  end

  def self.check_namespace namespace
    record_sets = AWS::Route53::HostedZone.new('ZUHORGBBATG0D').resource_record_sets
    record_sets["#{namespace}", 'CNAME'].exists?
  end

  def set_namespace
    AWS::Route53::HostedZone.new('ZUHORGBBATG0D').resource_record_sets.create("#{self.namespace}", 'CNAME', {ttl: 3600, resource_records: [{value: 'ghs.googlehosted.com'}]})
  end

  #later
  def invite
    url = 'http://demo.qmagico.com.br/api/user/invite_user'
    params = { :invite => '{"email": #{self.email.to_s}, "error": "INVALID_FORMAT", "is_admin": false, "is_editing": false, "is_student": false, "is_teacher": true}', :user_id => 'bsao', :ns => self.namespace.to_s }
    headers = { api_key: '23982c5b345843ef90bc3d482486085b9b9aa87cbf5f491f622feac5efbf7dc', appid: 'sitetvde', ns:'demo' }
    RestClient.post( url, params, headers)
  end
end