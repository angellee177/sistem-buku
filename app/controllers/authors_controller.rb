class AuthorsController < ApplicationController
    def index
        @authors = Author.all
    end

    def new
        @author = Author.new
    end

    def create
        author = Author.new(authors_params)
        author.save

        redirect_to authors_path
    end

    def edit
        @author = Author.find(params[:id])
    end

    def update
        @author = Author.find(params[:id])
        @author.update(authors_params)
        redirect_to authors_path
    end

    def destroy
        @author = Author.find(params[:id])
        @author.destroy

        redirect_to authors_path
    end

    def show
        id = params[:id]
        @author = Author.find(id)
    end

    def authors_params
        params.require(:author).permit(:name, :address, :old)
    end
end