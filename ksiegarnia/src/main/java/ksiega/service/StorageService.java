package ksiega.service;

import java.util.ArrayList;
import java.util.List;

import ksiega.domain.Book;
import ksiega.domain.Seller;

public class StorageService {

//METODY DO KSIĄŻEK
	private List<Book> BookList = new ArrayList<Book>();
	private long idBook = 0;

	public void addBook(Book book) {
		Book newBook = new Book(book.getTitle(), book.getAuthor(),
				book.getType());
		newBook.setId(idBook);
		BookList.add(newBook);
		idBook++;
	}

	public List<Book> getAllBook() {
		return BookList;
	}

	public void removeBook(Book book) {
		int i = 0;
		for (Book tempBook : getAllBook()) {
			if (tempBook.getId() == book.getId())
				break;
			i++;
		}
		BookList.remove(i);
	}
	
	public void updateBook(Book prevBook, Book newBook) {
		int i=0;
		for(Book tempBook : getAllBook()) {
			if(tempBook.getId() == prevBook.getId()) {
				break;
			}
			i++;
		}
		newBook.setId(prevBook.getId());
		BookList.set(i, newBook);
	}

	
//METODY DO PRACOWNIKÓW
	private List<Seller> SellerList = new ArrayList<Seller>();
	private long idSeller = 0;
	
	public void addSeller(Seller seller) {
		Seller newSeller = new Seller(seller.getFirstName(), seller.getLastName(),
				seller.getPesel(), seller.getSalary());
		newSeller.setId(idSeller);
		SellerList.add(newSeller);
		idSeller++;
	}

	public List<Seller> getAllSellers() {
		return SellerList;
	}

	public void removeSeller(Seller seller) {
		int i = 0;
		for (Seller tempSeller : getAllSellers()) {
			if (tempSeller.getId() == seller.getId())
				break;
			i++;
		}
		SellerList.remove(i);
	}
	
	public void updateSeller(Seller prevSeller, Seller newSeller) {
		int i=0;
		for(Seller tempSeller : getAllSellers()) {
			if(tempSeller.getId() == prevSeller.getId()) {
				break;
			}
			i++;
		}
		newSeller.setId(prevSeller.getId());
		SellerList.set(i, newSeller);
	}
	
}
