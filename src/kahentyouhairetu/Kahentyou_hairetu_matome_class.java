package kahentyouhairetu;

import java.util.ArrayList;

public class Kahentyou_hairetu_matome_class {

	public static void main(String[] args) {
		// TODO 自動生成されたメソッド・スタブ
		

		
		

		//オブジェクトの生成
	    ArrayList<String> array = new ArrayList<String>();

	    
	    //オブジェクトへの入れ方
	    array.add("日本");
	    array.add("ブラジル");
	    array.add("イングランド");
	    array.add("ポルトガル");
	    array.add("フランス");

	    //要素のゲットのやり方
	    String country = array.get(2);
	    System.out.println(country);

	    //１要素の削除
	    array.remove(1);
	    
	    
	    //全部削除
	    
	    //array.clear();
	    
	    
	    
	    
	}

}
