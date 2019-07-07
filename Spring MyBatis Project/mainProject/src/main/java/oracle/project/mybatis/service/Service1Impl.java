package oracle.project.mybatis.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import oracle.project.mybatis.dao.ImagesDao;
import oracle.project.mybatis.dao.LoginDao;
import oracle.project.mybatis.model.Images;
import oracle.project.mybatis.model.Login;

@Service
public class Service1Impl implements Service1 {
	
	@Autowired
	private LoginDao ld;
	@Autowired
	private ImagesDao ImgD;

	@Override
	public int insert(Login login) {
		// TODO Auto-generated method stub
		return ld.insert(login);
	}

	@Override
	public Login detail2(String id) {
	
		return ld.detail2(id);
	}

	@Override
	public int userPass(String id, String pw) {
		// TODO Auto-generated method stub
		return ld.userPass(id, pw);
	}

	@Override
	public String findPass(String id, String birthday) {
		// TODO Auto-generated method stub
		return ld.findPass(id, birthday);
	}

	@Override
	public String getId(String id) {
		
		return ld.getId(id);
		
	}

	@Override
	public List<Images> list(Images images) {
		// TODO Auto-generated method stub
		return ImgD.list(images);
	}

	@Override
	public int total() {
		// TODO Auto-generated method stub
		return ImgD.total();
	}

	@Override
	public Images detail(String imgId) {
		// TODO Auto-generated method stub
		return ImgD.detail(imgId);
	}

	@Override
	public int viewUpdate(String imgId) {
		// TODO Auto-generated method stub
		return ImgD.viewUpdate(imgId);
	}
	

}
