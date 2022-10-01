package Student1test;

import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

import Student1.Adddriver;

class AdddriverTest {
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
	void testgetaddDriver_Successful() {
		
		Adddriver ad = new Adddriver();
		
		int DID = 011111;
		String driverNIC = "9824000000";
		ad.setaddDriver_Successful(DID,driverNIC, driverNIC, driverNIC, driverNIC, driverNIC, driverNIC);
		
		String actual = ad.getaddDriver_Successful();
		String expected = "9824000001";
		
		
		assertNotEquals(expected, actual);
		
	}

	@Test
	void testgetaddDriver_Unsuccessful() {
		
		Adddriver ad = new Adddriver();
		
		int DID = 011111;
		String driverNIC = "9824000000";
		ad.setaddDriver_Unsuccessful(DID,driverNIC, driverNIC, driverNIC, driverNIC, driverNIC, driverNIC);
		
		String actual = ad.getaddDriver_Unsuccessful();
		String expected = "9824000000";
		
		
		assertEquals(expected, actual);
		
	}
	
	
}