package oracle.project.mybatis.service;

import java.util.List;


import oracle.project.mybatis.dao.LoginDao;
import oracle.project.mybatis.model.Images;
import oracle.project.mybatis.model.Login;

public interface Service1 {

	int insert(Login login);

	Login detail2(String id);
	
	int userPass(String id, String pw);
	
	String findPass(String id, String birthday);
	
	String getId(String id);
	
	List<Images>  list(Images images);

	int total();
	
	Images detail(String imgId);
	
	int viewUpdate(String imgId);



}
