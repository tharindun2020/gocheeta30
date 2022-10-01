package Student1test;

import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

import Student1.Addbranch;

class AddbranchTest {
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
	void testgetnewBranch() {
		
   Addbranch ab = new Addbranch();
		
		int BID = 011111;
		String newBranch = "Thangalle";
		ab.setnewBranch(BID,newBranch);
		
		String actual = ab.getnewBranch();
		String expected = "Thangalle2";
		String expected1 = "Thangalle";
		
		assertNotEquals(expected, actual);
		assertEquals(expected1, actual); // Branch already exist
	}

	
	@Test
	void testgetselectCitysuccessful() {
		
		Addbranch ab = new Addbranch();
		
		int BID = 011111;
		String selectCity = "Galle";
		ab.setselectCitysuccessful(BID,selectCity);
		
		String actual = ab.getselectCitysuccessful();
		String expected = "Matara";
		
		
		
		String expected1 = "Galle";
		
		
		assertNotEquals(expected, actual);
		assertEquals(expected1, actual);

		

	}
}