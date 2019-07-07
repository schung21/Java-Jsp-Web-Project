package oracle.project.mybatis.dao;

import java.util.HashMap;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import oracle.project.mybatis.model.Login;

@Repository
public class LoginDaoImpl implements LoginDao {
	
	@Autowired
	private SqlSession session;

	public int insert(Login login) {
		int kkk = 1;
		try {
			kkk = session.insert("insert", login);
		} catch (Exception e) {
			kkk = -1;
			System.out.println("e.getMessage()->"+e.getMessage());
		}
		return kkk;
	}


	@Override
	public Login detail(String id) {

		return session.selectOne("detail",id);
	}


	@Override
	public int userPass(String id, String pw) {
		// TODO Auto-generated method stub
	Map<String, Object> param = new HashMap<>();
	param.put("id", id);
	param.put("pw", pw);
		return session.selectOne("userPass", param);
	}


	@Override
	public String findPass(String id, String birthday) {
		Map<String, Object> param = new HashMap<>();
		param.put("id", id);
		param.put("birthday", birthday);
		return session.selectOne("findPass", param);
	}


	@Override
	public String getId(String id) {
		// TODO Auto-generated method stub
		return session.selectOne("getId", id);
	}


	@Override
	public Login detail2(String id) {
		// TODO Auto-generated method stub
		return null;
	}


}
