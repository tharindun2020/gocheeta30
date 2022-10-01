package Student1test;

import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.Test;


import Student1.Login;

class LoginTest {

	

	@Test
	void testCheckLoginStatus() {
        Login login = new Login();
		
		String password = "PID0001";
		String userName = "IT18000000";
		login.setLoginStatus(password,userName);
		String actual = login.getLoginStatus(userName);
		String expected = "IT18000000";
		assertEquals(expected, actual);
	}
	
	@Test
	void testgetLoginStatuserror() {
        Login login = new Login();
		
		String password = "PID0001";
		String userName = "IT18000001";
		login.setLoginStatus(password,userName);
		String actual = login.getLoginStatus(userName);
		String expected = "IT18000009";
		assertNotEquals(expected, actual);
	}
	
	@Test
	void testgetLoginStatuspassword() {
        Login login = new Login();
		
		String password = "PID0001";
		String userName = "IT18000000";
		login.setLoginStatuspassword(password,userName);
		String actual = login.getLoginStatuspassword(password);
		String expected = "PID0001";
		assertEquals(expected, actual);
	}
	
	@Test
	void testgetLoginStatuspassworderror() {
        Login login = new Login();
		
		String password = "PID0001";
		String userName = "IT18000000";
		login.setLoginStatuspassworderror(password,userName);
		String actual = login.getLoginStatuspassworderror(password);
		String expected = "PID00012";
		assertNotEquals(expected, actual);
	}
}