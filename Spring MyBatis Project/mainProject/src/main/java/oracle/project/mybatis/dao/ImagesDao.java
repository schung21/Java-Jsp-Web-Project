package oracle.project.mybatis.dao;

import java.util.List;

import oracle.project.mybatis.model.Images;

public interface ImagesDao {
	
	List<Images> list(Images images);

	int total();
	
	Images detail(String imgId);

	int viewUpdate(String imgId);

}
