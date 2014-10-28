package org.joedayz.corespringtest.web.controller;


import java.math.BigDecimal;
import java.util.List;

import org.joedayz.corespringtest.model.Category;
import org.joedayz.corespringtest.service.CategoryManager;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomNumberEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.support.SessionStatus;

@Controller
public class CategoryController {

	@Autowired
	private CategoryManager categoryManager;
	
	
	@InitBinder
	public void initBinder(WebDataBinder binder) {
		binder.registerCustomEditor(BigDecimal.class, 
				new CustomNumberEditor(BigDecimal.class, true));
	}
	
	

	@RequestMapping("/categoryList.htm")
	public void categoryList(Model model,
			@ModelAttribute("category") Category category) {

		List<Category> categorys = categoryManager.getCategorysList(category);
		model.addAttribute("categorys", categorys);
		model.addAttribute("category", category);
		
	}

	@RequestMapping(value = "/categoryView.htm", method = RequestMethod.GET)
	public @ModelAttribute("category")Category categoryView
			(@RequestParam(value = "idCategory", required = false) Integer idCategory) {

		if (idCategory != null) {
			Category category = categoryManager.getCategoryById(idCategory);
			return category;
		}
		return new Category();
	}

	@RequestMapping(value = "/categoryView.htm", method = RequestMethod.POST)
	public String saveCategory(@ModelAttribute("category") Category category,
			BindingResult result, SessionStatus status) {

		//try {
			
			//productValidator.validate(product, result);
			//if (result.hasErrors()) {
				//return "productView";
		//	}
			categoryManager.saveCategory(category);
			return "redirect:categoryList.htm";
			
	//	} catch (Exception e) {
		//	return "productView";
		//}
	}

	@RequestMapping("/deleteCategory.htm")
	public String deleteCategory(
			@RequestParam(value = "idCategory", required = false) Integer idCategory) {

		categoryManager.deleteCategory(idCategory);
		return "redirect:categoryList.htm";
	}
	

	
}