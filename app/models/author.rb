class Author < ApplicationRecord
 has_many :books #tambah 's' karena has_many menggunakan kata jamak
end