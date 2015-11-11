package ksiega.domain;

public class Book {
	private String tytul;

	public String getTytul() {
		return tytul;
	}

	public void setTytul(String tytul) {
		this.tytul = tytul;
	}

	public String getAutor() {
		return autor;
	}

	public void setAutor(String autor) {
		this.autor = autor;
	}

	private String autor;

	public Book() {
		super();
	}

	public Book(String tytul, String autor) {
		super();
		this.tytul = tytul;
		this.autor = autor;
	}
}
