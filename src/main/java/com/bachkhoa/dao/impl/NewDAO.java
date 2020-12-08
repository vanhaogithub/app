package com.bachkhoa.dao.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.bachkhoa.dao.INewDAO;
import com.bachkhoa.mapper.NewMapper;
import com.bachkhoa.model.NewModel;

@Repository
public class NewDAO extends AbstractDAO<NewModel> implements INewDAO {

	@Override
	public List<NewModel> findAll() {
		StringBuilder sql = new StringBuilder("SELECT * FROM news");
		return query(sql.toString(), new NewMapper());
	}
}
