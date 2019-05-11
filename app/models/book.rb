class Book < ApplicationRecord

    belongs_to :author

    # Validasi dengan 'Presence' agar kolom 'Title' 
    # tidak boleh kosong atau harus di Isi
    validates :title, presence: true

    # 'Length' untuk mengecek panjang karakter yang ada 
    # pada kolom 'Description' dengan 'Minimum' atau 'Maximum'
    validates :description, length: {in: 10..3500}

    # Validasi 'Numericality' untuk memvalidasi inputan 
    # pada kolom 'Page', dimana inputan harus berupa angka
    validates :page, numericality: true 

    # 

    def self.expensive #Custom Method untuk mencari harga buku yang mahal
        where('price > 150000') 
    end

    def self.price_equal_more(price)
        where('price >= ?', price)
    end


end