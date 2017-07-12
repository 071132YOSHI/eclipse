package kahentyouhairetu;

import java.util.Collections;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Map;

public class emuration {

	public static void main(String[] args) {
		// TODO 自動生成されたメソッド・スタブ


		Map<String, String> map = new HashMap();
		map.put("key1", "value1");
		map.put("key2", "value2");
		map.put("key3", "value3");
		map.put("key4", "value4");
		map.put("key5", "value5");

		Enumeration<String> keys = Collections.enumeration(map.keySet());
		while(keys.hasMoreElements()) {
		    System.out.println(keys.nextElement());
		}

		Enumeration<String> values = Collections.enumeration(map.values());
		while(values.hasMoreElements()) {
		    System.out.println(values.nextElement());
		}


		System.out.println("uturaneeeeeeeeeeee");


	}




}
