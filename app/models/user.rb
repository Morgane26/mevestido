# == Schema Information
#
# Table name: users
#
#  id                     :bigint(8)        not null, primary key
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default(0), not null
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :inet
#  last_sign_in_ip        :inet
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  devise :omniauthable, omniauth_providers: [:facebook]

  has_many :articles, dependent: :destroy
  before_save :set_default_city

  # validates :city, presence: true, dependent: :destroy

  # mount_uploader :photo, PhotoUploader

  # after_create :send_welcome_email

  def self.find_for_facebook_oauth(auth)
    user_params = auth.slice(:provider, :uid)
    user_params.merge! auth.info.slice(:email, :first_name, :last_name)
    user_params[:facebook_picture_url] = auth.info.image
    user_params[:token] = auth.credentials.token
    user_params[:token_expiry] = Time.at(auth.credentials.expires_at)
    user_params = user_params.to_h

    user = User.find_by(provider: auth.provider, uid: auth.uid)
    user ||= User.find_by(email: auth.info.email) # User did a regular sign up in the past.
    if user
      user.update(user_params)
    else
      user = User.new(user_params)
      user.password = Devise.friendly_token[0,20]  # Fake password for validation
      user.save
    end
    return user
  end

  def set_default_city
    self.city ||= "marseille"
  end
end











  # def self.find_for_facebook_oauth(auth)

  #   user_params = auth.slice(:provider, :uid).to_h
  #   user_params.merge! auth.info.slice(:email, :first_name, :last_name)
  #   user_params[:facebook_picture_url] = auth.info.image
  #   user_params[:token] = auth.credentials.token
  #   user_params[:user_name] = auth.info.first_name
  #   user_params[:token_expiry] = Time.at(auth.credentials.expires_at)
  #   # binding.pry

  #   user = User.where(provider: auth.provider, uid: auth.uid).first
  #   user ||= User.where(email: auth.info.email).first # User did a regular sign up in the past.
  #   if user
  #     user.update(user_params)
  #   else
  #     user = User.new(user_params)
  #     user.password = Devise.friendly_token[0,20] # Fake password for validation
  #     user.save
  #   end

  #   return user
  # end

#   private

#   def send_welcome_email
#     UserMailer.welcome(self).deliver_now
#   end

# end
# end
