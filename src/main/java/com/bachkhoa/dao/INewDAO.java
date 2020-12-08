package com.bachkhoa.dao;

import java.util.List;

import com.bachkhoa.model.NewModel;

public interface INewDAO extends GenericDAO<NewModel> {
	List<NewModel> findAll();
}
