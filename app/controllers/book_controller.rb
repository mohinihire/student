class BookController < ApplicationController
  def add
    #@book=Book.new
  end
  def edit
    @book=Book.find(params[:id])
  end
  def delete
    #which record delete
    @book=Book.find(params[:id])
  end
  def destroy
    bk=Book.find(params[:id])
    bk.destroy
    redirect_to(action:'list')
  end
  def update
    @book=Book.find(params[:id])
    id=@book.id
    if @book.update_attributes(book_params)
      redirect_to(action: 'list')
    else
      render('edit')
    end
  end

  def new
    #@book=Book.new(book_params)
    @book=Book.new
  end
  def create
    @book=Book.new(book_params)
    if @book.save
      redirect_to(action:'dummy')
     # redirect_to(action:'list')
    else
      flash[:notice]="Error:record not created"
      render(action:'new')
    end
  end

  def search
  end

  def save
  end

  def list
    #fetching data from db
    @books=Book.all
  end
  def new
    #@book=Book.new
  end
  def show
    @book=Book.find(params[:id])
  end
  def book_params
    params.require(:books).permit(:name,:author,:price)
  end
end
