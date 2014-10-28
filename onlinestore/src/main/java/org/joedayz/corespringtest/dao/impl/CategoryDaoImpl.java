package org.joedayz.corespringtest.dao.impl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.joedayz.corespringtest.dao.CategoryDao;
import org.joedayz.corespringtest.model.Category;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.orm.hibernate3.SessionFactoryUtils;
import org.springframework.stereotype.Repository;


@Repository
public class CategoryDaoImpl implements CategoryDao{

	private HibernateTemplate hibernateTemplate;
	private JdbcTemplate jdbcTemplate;
			
	@Autowired
	public CategoryDaoImpl(SessionFactory sessionFactory) {
		this.hibernateTemplate = new HibernateTemplate(sessionFactory);
		this.jdbcTemplate = new JdbcTemplate(SessionFactoryUtils.getDataSource(sessionFactory));
	}

	public void deleteCategory(Integer idCategory) {
		Category category = getCategoryById(idCategory);
		hibernateTemplate.delete(category);
	}

	public Category getCategoryById(Integer idCategory) {
		Category category = (Category) hibernateTemplate.get(Category.class, idCategory);
		return category;
	}

	@SuppressWarnings("unchecked")
	public List<Category> getCategorysList(Category category) {
		
		StringBuffer query = new StringBuffer(" from Category ");
		
		if(category != null && category.getName() != null 
				&& category.getName().length() > 0){
			
			query.append(" where upper(name) like '%").append(category.getName().
					toUpperCase()).append("%' ");
		}
		
		List<Category> list = (List<Category>)
				  hibernateTemplate.find(query.toString());
		return list;
	}

	public void saveCategory(Category category) {

		hibernateTemplate.saveOrUpdate(category);
	}
	
	@SuppressWarnings("unchecked")
	public List<Category> getCategoriesTypesList() {
		
		List<Category> list = (List<Category>) hibernateTemplate.
				find("from Category");
		return list;
	}	
	
	public boolean isRepeatDescription(String name, Integer idCategory){
		
		StringBuffer query = new StringBuffer();
		query.append("select count(*) from category ");
		query.append(" where upper(trim(name)) = '").append(name.trim().
				toUpperCase()).append("' ");
		
		if(idCategory != null){
			query.append(" and id_category != ").append(idCategory);
		}		

		int count = jdbcTemplate.queryForInt(query.toString());
		if(count > 0){
			return true;
		}
		return false;		
	}
	
}
