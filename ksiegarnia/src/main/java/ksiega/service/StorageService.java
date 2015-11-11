package ksiega.service;

import java.util.ArrayList;
import java.util.List;

import ksiega.domain.Book;

public class StorageService {

	private List<Book> db = new ArrayList<Book>();

	public void add(Book book) {
		Book newBook = new Book(book.getTytul(), book.getAutor());
		db.add(newBook);
	}

	public List<Book> getAllBook() {
		return db;
	}

}
