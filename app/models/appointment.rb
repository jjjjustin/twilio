require 'twilio-ruby'


class Appointment < ActiveRecord::Base

  def self.establish_twilio
    @account_sid = ENV['twilio_account_sid']
    @auth_token = ENV['twilio_auth_token']
    @from_phone_number = ENV['twilio_phone_number']
    @twilio_client = Twilio::REST::Client.new(@account_sid, @auth_token)
  end

  def self.send_reminder_text_message(body)
    Appointment.establish_twilio
    @twilio_client.messages.create(       :from => @from_phone_number,
                                          :to => "(512) 949-9855",
                                          :body => body )
  end

  def self.phone_call_fun_time
    Appointment.establish_twilio
    @twilio_client.account.calls.create(  url: 'http://demo.twilion.com/docs/voice.xml',
                                          from: @from_phone_number,
                                          to: "(512) 949-9855")

  end
end
