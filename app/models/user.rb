class User < ApplicationRecord
    has_one :dompet

    # untuk memvalidasi username, agar tidak ada username yang sama
    validates :username, uniqueness: {case_sensitive: false, message: 'Username sudah Terdaftar'}

    # untuk mengecek password yang sudah dimasukkan benar 
    has_secure_password
end