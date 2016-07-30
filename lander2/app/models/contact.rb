class Contact < ActiveRecord::Base
  validates :email, presence: true
  validates :website, presence: true

  validates_format_of :email, with: /\A[-a-z0-9_+\.]+\@([-a-z0-9]+\.)+[a-z0-9]{2,4}\z/i

  def subscribe
    mailchimp = Gibbon::Request.new(api_key: Rails.application.secrets.mailchimp_api_key)
    list_id = Rails.application.secrets.mailchimp_list_id
    result = mailchimp.lists(list_id).members.create(
      body: {
        email_address: self.email,
        merge_fields: {SITE: self.website},
        status: 'pending'
    })
    #Rails.logger.info("Subscribed #{self.email} to MailChimp") if result
    Rails.logger.info("An email has been sent to connect #{self.email} to Ladder Digital!") if result
  end
end
