class User < ApplicationRecord
    has_one :dompet
    # untuk memvalidasi username, agar tidak ada username yang sama
    validates :username, uniqueness: {case_sensitive: false}
end