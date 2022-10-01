package Student1test;

import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

import Student1.Addnewvehicle;

class AddnewvehicleTest {
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
	void testgetaddVehicle_Successful() {
		
		Addnewvehicle an = new Addnewvehicle();
		
		int DID = 011111;
		String vehicleName = "F7";
		String vehicleNumber = "2000";
		String vehicleType = "Alto";
		String chassieNumber="032222";
		String driverName="Tharindu";
		String driverRegNo="01111";
		String driverBranch="Thangalle 2";
		String driverCity="Matara";
				
		an.setaddVehicle_Successful(DID,vehicleName, vehicleName, vehicleNumber, vehicleNumber, vehicleName, vehicleName, vehicleName, chassieNumber);
		
		String actual = an.getaddVehicle_Successful();
		
		String expected = "032221";
		
		
		assertNotNull(vehicleName);
		assertNotNull(vehicleNumber);
		assertNotNull(vehicleType);
		assertNotNull(chassieNumber);
		assertNotNull(driverName);
		assertNotNull(driverRegNo);
		assertNotNull(driverBranch);
		assertNotNull(driverCity);
		
		assertNotEquals(expected, actual);
		
		
		
		
	}

	@Test
	void testgetaddVehicle_Unsuccessful() {
		
		Addnewvehicle an = new Addnewvehicle();
		
		int DID = 011111;
		String vehicleName = null;
		String vehicleNumber = null;
		String vehicleType = null;
		String chassieNumber=null;
		String driverName=null;
		String driverRegNo=null;
		String driverBranch=null;
		String driverCity=null;
		an.setaddVehicle_Unsuccessful(DID,vehicleName, vehicleName, vehicleNumber, vehicleNumber, vehicleName, vehicleNumber, vehicleNumber, chassieNumber);
		
		String actual = an.getaddVehicle_Unsuccessful();
		
		
		
		assertNull(vehicleName);
		assertNull(vehicleNumber);
		assertNull(vehicleType);
		assertNull(chassieNumber);
		assertNull(driverName);
		assertNull(driverRegNo);
		assertNull(driverBranch);
		assertNull(driverCity);
		
        



		
	}

	
}