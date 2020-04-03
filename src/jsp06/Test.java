package jsp06;

import java.util.ArrayList;

public class Test {
	private ArrayList<TestDTO> arr = new ArrayList<TestDTO>();
	public void insert() {
		TestDTO d01 = new TestDTO();
		TestDTO d02 = new TestDTO();
		TestDTO d03 = new TestDTO();
		d01.setId("d01");   d02.setId("d02");	d03.setId("d03");
		d01.setPwd("1111");	d02.setPwd("2222");	d03.setPwd("3333");
		arr.add(d01);  arr.add(d02);  arr.add(d03);
	}
	public ArrayList<TestDTO> getArr(String id){
		System.out.println("넘어온 id : "+id);
		return arr;
	}
}












