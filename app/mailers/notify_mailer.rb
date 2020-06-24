class NotifyMailer < ApplicationMailer
    default from: 'do_not_reply@nowcomputers.com'

    def self.send_email(row)
      emails = User.select(:email)
      emails.each do |email|
        new_product(email, row).deliver_now
        # TODO: filter only customers. Enqueue through ActiveJob
        #new_request(email,row).deliver_later

      end
    end

    def new_product(email, row)
      @item = row
      mail(to: email, subject: 'New product')
    end
  end