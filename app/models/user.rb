class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :documents
  has_many :corepresentants
  has_many :foyermembres
  has_many :contacts
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  def photo=(uploaded_io)
    File.open(Rails.root.join('public', 'uploads', uploaded_io.original_filename), 'wb') do |file|
        file.write(uploaded_io.read)
    end
    write_attribute(:photo,uploaded_io.original_filename)
  end
  def photo
    read_attribute(:photo)
  end
end
