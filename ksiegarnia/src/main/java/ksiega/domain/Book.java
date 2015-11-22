package ksiega.domain;

public class Book {
	private String title = "";
	private String author = "";
	private String type = "";


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

	public Book(String title, String author, String type) {
		super();
		this.title = title;
		this.author = author;
		this.type = type;
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

	public static boolean validate(Book book) {
		if (book.getTitle().length() < 3 || book.getAuthor().length() < 3
				|| book.getType().equals(null)) {
			return false;
		}
		return true;
	}
}
