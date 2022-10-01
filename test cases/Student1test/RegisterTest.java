package Student1test;

import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

import Student1.Register;

class RegisterTest {
	static void setUpBeforeClass() throws Exception {
	}

	@AfterAll
	static void tearDownAfterClass() throws Exception {
	}

	@BeforeEach
	void setUp() throws Exception {
	}

	@AfterEach
	void tearDown() throws Exception {
	}

	@Test
	void testgetuserfullName() {
		
   Register register = new Register();
		
		int RID = 011111;
		String userfullName = "Malkanthi";
		register.setuserfullName(RID,userfullName);
		
		String actual = register.getuserfullName();
		String expected = "Malkanthi";
		
		assertEquals(expected, actual);
	}

	@Test
	void testgetuserNIC() {
		
		Register register = new Register();
		
		
		String userNIC = "9800000000";
		register.setuserNIC(userNIC);
		
		String actual = register.getuserNIC();
		String expected = "9800000000";
		
		assertEquals(expected, actual);
	}
	@Test
	void testgetuserMail() {
		
		Register register = new Register();
		
		int RID = 011111;
		String userMail = "tharindu@gmail.com";
		register.setuserMail(RID,userMail);
		
		String actual = register.getuserMail();
		String expected = "tharindu@gmail.com";
		
		assertEquals(expected, actual);
	}
	
	@Test
	void testgetuserContact() {
		
		Register register = new Register();
		
		
		String userContact = "011";
		register.setuserContact(userContact);
		
		String actual = register.getuserContact();
		String expected = "011";
		
		assertEquals(expected, actual);
	}
	
	@Test
	void testgetuserconfirmPassword() {
		
		Register register = new Register();
		
	

		String userconfirmPassword = "pw111";
		register.setuserconfirmPassword(userconfirmPassword);
		
		String actual = register.getuserconfirmPassword();
		String expected = "pw111";
		
		assertEquals(expected, actual);
	}
	
	@Test
	void testgetuserNICsuccessful() {
		
		Register register = new Register();
		
		
		String userNIC = "9800000000";
		register.setuserNIC(userNIC);
		
		String actual = register.getuserNIC();
		String expected = "9800000001";
		
		assertNotEquals(expected, actual);
	}
	
	@Test
	void testgetuserMailsuccessful() {
		
		Register register = new Register();
		
		int RID = 011111;
		String userMail = "tharindu@gmail.com";
		register.setuserMail(RID,userMail);
		
		String actual = register.getuserMail();
		String expected = "nimal@gmail.com";
		
		assertNotEquals(expected, actual);
	}
}