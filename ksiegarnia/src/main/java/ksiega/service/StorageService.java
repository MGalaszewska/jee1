package ksiega.service;

import java.util.ArrayList;
import java.util.List;

import ksiega.domain.Book;

public class StorageService {

	private List<Book> BookList = new ArrayList<Book>();
	private long idBook = 0;

	public void add(Book book) {
		Book newBook = new Book(book.getTitle(), book.getAuthor(),
				book.getType(), book.getId());
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

}
