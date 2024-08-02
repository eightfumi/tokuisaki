/**
 * AdminLogic.java
 *
 * All Rights Reserved, Copyright(c) Fujitsu Learning Media Limited
 */

package jsys.sales.logic;

import java.sql.Connection;
import java.sql.SQLException;

import jsys.sales.common.SalesBusinessException;
import jsys.sales.common.SalesSystemException;
import jsys.sales.dao.CheckAdminDAO;
import jsys.sales.dao.ConnectionManager;
import jsys.sales.entity.Administrator;

/**
 *
 * @author FLM
 * @version 1.0.0
 */
public class AdminLogic {
	public Administrator checkAdmin(String admin_password)
			throws SalesBusinessException, SalesSystemException {
		System.out.println("AdminLogic進行開始");
		Connection con = null;
		Administrator administrator = null;
		try {
			// データベースの接続を取得する
			con = ConnectionManager.getConnection();

			CheckAdminDAO checkAdminDAO = new CheckAdminDAO(con);
			administrator= checkAdminDAO.checkAdmin(admin_password);
			// 戻り値がnullの場合、業務エラーを発生させる
			if (administrator == null) {
				throw new SalesBusinessException("ログインに失敗しました。");
			}
		} catch (SQLException e) {
			// データベースエラーの場合、システムエラーを発生させる
			throw new SalesSystemException("システムエラーが発生しました。管理者に連絡してくださいな。");
		} finally {
			try {
				if (con != null) {
					con.close();
				}
			} catch (SQLException e) {
				throw new SalesSystemException("システムエラーが発生しました。管理者に連絡してください。");
			}
		}
		System.out.println("AdminLogic退散");
		return administrator;
	}


}
