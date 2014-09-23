class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  
  #adaptaciones Hechas para que funcionara sin mailer
  def email_required?
    false
  end

  def email_changed?
    false
  end
  
end
