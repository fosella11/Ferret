package org.joedayz.corespringtest.service;

import java.util.List;

import org.joedayz.corespringtest.model.Category;

public interface CategoryManager {

	
	public List<Category> getCategorysList(Category category);
	public Category getCategoryById(Integer idCategory);
	public void saveCategory(Category category);
	public void deleteCategory(Integer idCategory);
	
	public boolean isRepeatDescription(String name, Integer idCategory);

	
	
}
