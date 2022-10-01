package Student1test;

import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

import Student1.Addvehicletype;

class AddvehicletypeTest {
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
	void testgetaddVehicletype_Successful_Successful() {
		
		Addvehicletype av = new Addvehicletype();
		
		int DID = 011111;
		String vehicletypeName = "Toyota";
		String diliverycostperkm = "20";
		av.setaddVehicletype_Successful(DID,vehicletypeName, vehicletypeName);
		
		String actual = av.getaddVehicletype_Successful();
		
		
		
		assertNotNull(vehicletypeName);
		assertNotNull(diliverycostperkm);
		
		
	}

	@Test
	void testgetaddVehicletype_Unsuccessful() {
		
		Addvehicletype av = new Addvehicletype();
		
		int DID = 011111;
		String vehicletypeName = null;
		String diliverycostperkm = null;
		av.setaddVehicletype_Unsuccessful(DID,vehicletypeName, vehicletypeName);
		
		String actual = av.getaddVehicletype_Unsuccessful();
		
		
		
		assertNull(vehicletypeName);
		assertNull(diliverycostperkm);
		
	}

	
}