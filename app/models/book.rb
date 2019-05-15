class Book < ApplicationRecord

    belongs_to :author

    # Validasi dengan 'Presence' agar kolom 'Title' 
    # tidak boleh kosong atau harus di Isi
    validates :title, presence: {message: 'Judul Harus Di isi'}

    # 'Length' untuk mengecek panjang karakter yang ada 
    # pada kolom 'Description' dengan 'Minimum' atau 'Maximum'
    validates :description, length: {in: 10..3500, message: 'Minimal Deskripsi 10 karakter dan Maksimal 3500  Karakter'}

    # Validasi 'Numericality' untuk memvalidasi inputan 
    # pada kolom 'Page', dimana inputan harus berupa angka
    validates :page, numericality: {greater_than: 10, message: 'Minimal Jumlah halaman lebih dari 10 halaman'}

    # 

    def self.expensive #Custom Method untuk mencari harga buku yang mahal
        where('price > 150000') 
    end

    def self.price_equal_more(price)
        where('price >= ?', price)
    end


end