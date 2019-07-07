package oracle.project.mybatis.dao;


import java.util.ArrayList;
import java.util.Map;

import oracle.project.mybatis.model.Login;

public interface LoginDao {

	int insert(Login login);

	Login detail(String id);

	int userPass(String id, String pw);
	
	String findPass(String id, String birthday);

	String getId(String id);

	Login detail2(String id);
	
	
}
