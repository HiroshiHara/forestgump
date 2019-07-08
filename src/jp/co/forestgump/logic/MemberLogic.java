package jp.co.forestgump.logic;

public class MemberLogic {
	
	private MemberLogic() {
		
	}
	
	/**
	 * 引数で渡された文字列をカンマ区切りで分割し、文字列配列にして返します。
	 * @param instruments カンマ区切りの文字列
	 * @return 文字列配列
	 */
	public static String[] splitInstruments(String instruments) {
		String[] result = instruments.split(",");
		return result;
	}
	
	/**
	 * テスト用メインメソッド
	 */
	public static void main(String[] args) {
		String test = "aaa,bbb,ccc,ddd,eee";
		String[] result = splitInstruments(test);
		for (int i =0; i < result.length; i++) {
			System.out.println(result[i]);
		}
	}
	
}
