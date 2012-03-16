/**
* @mxunit:decorators mxunit.framework.decorators.OrderedTestDecorator
*/
component extends="mxunit.framework.TestCase"{
	
	/**
	*@order 1
	*/
	public void function testGetingArrayLength(){
		var myArray = ["one","two","three"]; 
		// in ColdFusion you can use == or equal to compare two values
		assert(arrayLen(myArray) == "__", "what is the length of the array?");
	}

	/**
	*@order 2
	*/
	public void function testGettingArrayElement(){
		var myArray = ["one","two","three"];
		
		//arrays in ColdFusion start with an index of one, not zero like a lot of languages
		assert(myArray[1] == "__", "what is in the 1th position of the array?");
	}

	/**
	*@order 3
	*/
	private String function returnString(String myArg){
		                  
	}

	/**
	*@order 4
	*/
	public void function testAppendingArrayElements(){
		var myArray = ["one","two","three"];
		
		arrayAppend(myArray,"four");
		
		assert(myArray[4] == "__", "what is in the 4th position of the array?");
	}

	/**
	*@order 5
	*/
	public void function testArrayTextSorting(){
		var myArray = ["pineapple","banana","grape","kiwi"];

		arraySort(myArray,"text");

		assert(myArray[2] == "__", "what is in the 2nd position of the array?");
	}

	/**
	*@order 6
	*/
	public void function testArrayNumberSorting(){
		var myArray = [6,9,34,8,22];

		arraySort(myArray,"numeric");

		assert(myArray[3] == "__", "what is in the 3rd position of the array?");
	}

	/**
	*@order 7
	*/
	public void function testArraySwap(){
		var myArray = ["Koans","ColdFusion","Project"];

		arraySwap(myArray,1,2);

		assert(myArray[1] == "__", "what is in the 1st position of the array?");
	}
}