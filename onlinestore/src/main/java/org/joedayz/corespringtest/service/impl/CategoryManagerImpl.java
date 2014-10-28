package org.joedayz.corespringtest.service.impl;

import java.util.List;

import org.joedayz.corespringtest.dao.CategoryDao;
import org.joedayz.corespringtest.model.Category;
import org.joedayz.corespringtest.service.CategoryManager;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CategoryManagerImpl implements CategoryManager {

	@Autowired
	private CategoryDao categoryDao;
	
	public void deleteCategory(Integer idCategory) {
		categoryDao.deleteCategory(idCategory);
	}

	public Category getCategoryById(Integer idCategory) {
		return categoryDao.getCategoryById(idCategory);
	}

	public List<Category> getCategorysList(Category category) {
		return categoryDao.getCategorysList(category);
	}

	public void saveCategory(Category category) {
		categoryDao.saveCategory(category);
	}

	

	public boolean isRepeatDescription(String name, Integer idCategory) {
		return categoryDao.isRepeatDescription(name, idCategory);
	}

}
