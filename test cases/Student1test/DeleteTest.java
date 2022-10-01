package Student1test;

import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

import Student1.Addbranch;

class DeleteTest {
	
	@Test
	void test() {
	  // create the mocks we need and set up their behaviour
	  CarRepository carRepository = mock(CarRepository.class);
	  Car car = mock(Car.class);
	  when(carRepository.findById(123)).thenReturn(car);

	  // create the instance we will test and give it our mock
	  ClassToTest classToTest = new ClassToTest(carRepository);
	  classToTest.delete(123);

	  // check that the expected methods were called
	  verify(car).setActionStatus("DELETE");
	  verify(carRepository).save(car);
	}
}