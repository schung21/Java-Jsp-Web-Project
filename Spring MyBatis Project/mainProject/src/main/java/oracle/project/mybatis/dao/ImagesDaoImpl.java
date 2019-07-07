package oracle.project.mybatis.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import oracle.project.mybatis.model.Images;
@Repository
public class ImagesDaoImpl implements ImagesDao {
	
	@Autowired
	private SqlSession session;

	@Override
	public List<Images> list(Images images) {
		// TODO Auto-generated method stub
		return session.selectList("list", images );
	}


	public int total() {
		
		return session.selectOne("total");
	}


	@Override
	public Images detail(String imgId) {
		// TODO Auto-generated method stub
		return session.selectOne("detail", imgId);
	}


	@Override
	public int viewUpdate(String imgId) {
		// TODO Auto-generated method stub
		return session.update("viewUpdate", imgId);
	}
}
