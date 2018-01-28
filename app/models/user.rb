class User < ApplicationRecord
  before_save { self.email.downcase! }
  validates :name, presence: true, length: { maximum: 50 }
  validates :email, presence: true, length: { maximum: 255 },
                    format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i },
                    uniqueness: { case_sensitive: false }
  validates :introduction, presence: true, length: { maximum: 255 }
  has_secure_password
  
  # userオブジェクトから呼び出せるインスタンスメソッドとして定義
  def set_picture(file)
    if !file.nil?
      file_name = file.original_filename
      File.open("public/user_pictures/#{file_name}", 'wb') { |f|
        f.write(file.read)
      }
      self.picture = file_name
    end
  end
end
