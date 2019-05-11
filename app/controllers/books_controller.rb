class BooksController < ApplicationController
    def index #untuk menampilkan semua data yang ada dalam database
        @books = Book.all
    end
    
    def new #untuk menampilkan form create
        @book = Book.new
    end

    def create #untuk memproses create
        book = Book.new(resources_params)
        book.save
        flash[:notice] = 'Data Berhasil di tambahkan'
        redirect_to books_path
    end

    def edit #untuk form edit
        @book = Book.find(params[:id])
    end

    def update #untuk memproses hasil edit
        @book = Book.find(params[:id])
        @book.update(resources_params)
        flash[:notice] = 'Data Berhasil di Update'
        redirect_to book_path(@book)
    end

    def destroy #untuk menghapus data 
        @book = Book.find(params[:id])
        @book.destroy
        flash[:notice] = 'Data Telah Dihapus'
        redirect_to books_path(@book)
    end
 
    def show #untuk menampilkan data dari satu kolom secara detail
        id = params[:id]
        @book = Book.find(id)
        # render plain: @book.title untuk mengecek apakah data sudah masuk atau belum
    end

    def resources_params
        params.require(:book).permit(:title, :description, :author_id, :page, :price)
        # params.require(:author).permit(:id, :name)
    end
end