package ksiega.domain;

public class Seller {

	private String firstName;
	private String lastName;
	private String pesel;
	private String salary;
	private long id;

	
	public Seller() {
		super();
	}
	public Seller(String firstName, String lastName, String pesel, String salary) {
		super();
		this.firstName = firstName;
		this.lastName = lastName;
		this.pesel = pesel;
		this.salary = salary;
	}

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getPesel() {
		return pesel;
	}

	public void setPesel(String pesel) {
		this.pesel = pesel;
	}

	public String getSalary() {
		return salary;
	}

	public void setSalary(String salary) {
		this.salary = salary;
	}
	
	boolean tryParseLong(String value) {  
	     try {  
	         Long.parseLong(value);  
	         return true;  
	      } catch (NumberFormatException e) {  
	         return false;  
	      }  
	}
	boolean tryParseInt(String value) {  
	     try {  
	         Integer.parseInt(value);  
	         return true;  
	      } catch (NumberFormatException e) {  
	         return false;  
	      }  
	}
	
	public boolean validate(Seller seller) {
		if(seller.getFirstName().length() < 3 || seller.getLastName().length() < 3 || 
				(seller.getPesel().toString().length() != 11 
				|| !tryParseLong(seller.getPesel()) || !tryParseInt(seller.getSalary()))) {
			return false;
		} return true;
	}

}
