package Student1test;

import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.Test;


import Student1.Search;

class SearchTest {

	

	@Test
	void testCheckSearch_Successful() {
        Search search = new Search();
		
		String object = "Toyota";
		search.setSearch_Successful(object);
		String actual = search.getSearch_Successful(object);
		String expected = "Toyota";
		assertEquals(expected, actual);
	}
	
	@Test
	void testCheckSearch_Unsuccessful() {
        Search search = new Search();
		
		String object = "Toyota";
		search.setSearch_Unsuccessful(object);
		String actual = search.getSearch_Unsuccessful(object);
		String expected = "Ferrari";
		assertNotEquals(expected, actual);
	}
		
			
}