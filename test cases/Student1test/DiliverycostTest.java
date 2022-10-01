package Student1test;

import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.Test;

import Student1.Diliverycost;


class DiliverycostTest {

	
	@Test
	void testCalculateFullRideCost_Successful() {
        Diliverycost dc = new Diliverycost();
		
		double costperkm = 200.00;
		double totaldistance = 8.00;
		
		double actual = dc.testCalculateFullRideCost_Successful(costperkm,totaldistance);
		double expected = 1600.00;
		assertEquals(expected, actual);
}
	
	@Test
	void testCalculateFullRideCost_Unsuccessful() {
        Diliverycost dc = new Diliverycost();
		
		double costperkm = 200.00;
		double totaldistance = 8.00;
		
		double actual = dc.testCalculateFullRideCost_Unsuccessful(costperkm,totaldistance);
		double expected = 2000.00;
		assertNotEquals(expected, actual);
}
}