package jp.co.forestgump.logic;

import jp.co.forestgump.beans.User;

public class LoginLogic {
	
	private LoginLogic() {
		
	}
	
	/**
	 * ★仮のログイン認証メソッド
	 * @param userid ユーザID
	 * @param password パスワード
	 * @return ログイン認証に成功したらtrue
	 */
	public static boolean isValidUser(User user) {
		if (user.getId().equals("fgjw") && user.getPassword().equals("fgjw")) {
			return true;
		}
		return false;
	}
}
