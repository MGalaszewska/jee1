package ksiega.domain;

public class Book {
	private String title = "";
	private String author = "";
	private String type = "";
<<<<<<< HEAD
	private String genre = "";

	public String getGenre() {
		return genre;
	}

	public void setGenre(String genre) {
		this.genre = genre;
	}

=======
>>>>>>> d0282b2fc87ad4d8439e5b2585f556caca9d08ed
	private long id;

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public Book() {
		super();
	}

	public Book(String title, String author, String type, String genre) {
		super();
		this.title = title;
		this.author = author;
		this.type = type;
		this.genre = genre;
	}

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getAuthor() {
		return author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}

	public boolean validate(Book book) {
		if (book.getTitle().length() < 3 || book.getAuthor().length() < 3
				|| book.getType().equals(null)) {
			return false;
		}
		return true;
	}
}
