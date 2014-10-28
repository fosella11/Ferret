package org.joedayz.corespringtest.web.controller;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;

import org.joedayz.corespringtest.model.Category;
import org.joedayz.corespringtest.model.Pedido;
import org.joedayz.corespringtest.model.Product;
import org.joedayz.corespringtest.service.PedidoManager;
import org.joedayz.corespringtest.service.ProductManager;
import org.joedayz.corespringtest.web.validator.ProductValidator;
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
public class PedidoController {

	@Autowired
	private ProductManager productManager;
	
	@Autowired
	private PedidoManager pedidoManager;
	
	@InitBinder
	public void initBinder(WebDataBinder binder) {
		binder.registerCustomEditor(BigDecimal.class, 
				new CustomNumberEditor(BigDecimal.class, true));
	}
	
	
	@RequestMapping("/pedidoList.htm")
	public void pedidoList(Model model,
			@ModelAttribute("pedido") Pedido pedido) {

		List<Pedido> pedidos = pedidoManager.getPedidosList(pedido);
		model.addAttribute("pedidos", pedidos);
		model.addAttribute("pedido", pedido);
		
	}
	
	

//	@RequestMapping("/productListPedido.htm")
//	public void productListPedido(Model model,
	//		@ModelAttribute("product_pedido") Product product) {

		//List<Product> products = productManager.getProductsList(product);
		//model.addAttribute("products", products);
		//model.addAttribute("product", product);
		
//	}
	
	
	

	@RequestMapping(value = "/pedidoView.htm", method = RequestMethod.GET)
	public @ModelAttribute("pedido")Pedido pedidoView
			(@RequestParam(value = "idPedido", required = false) Integer idPedido) {

		if (idPedido != null) {
			Pedido pedido = pedidoManager.getPedidoById(idPedido);
			return pedido;
		}
		return new Pedido();
	}

//	@RequestMapping(value = "/pedidoView.htm", method = RequestMethod.POST)
//	public String savePedido(@ModelAttribute("pedido") Pedido pedido,
	//			BindingResult result, SessionStatus status) {

		
	//	pedidoManager.savePedido(pedido);
	//	return "redirect:pedidoList.htm";
			
		
	//}
	
	
	@RequestMapping(value = "/pedidoView.htm", method = RequestMethod.POST)
	public String savePedido(@ModelAttribute("pedido") Pedido pedido,
			BindingResult result, SessionStatus status) {

			pedidoManager.savePedido(pedido);
			return "redirect:pedidoList.htm";
		
	}
	
	
	
	
	
	
	

	@RequestMapping("/deletePedido.htm")
	public String deletePedido(
			@RequestParam(value = "idPedido", required = false) Integer idPedido) {

		pedidoManager.deletePedido(idPedido);
		return "redirect:pedidoList.htm";
	}
	
	
	
	@ModelAttribute("categoriesTypes")
	public List<Product> listarCategories() {

		List<Product> categoriesTypes = productManager.getProductsList2();
		return categoriesTypes;
	}
	
	
	@RequestMapping("/pedidopendienteList.htm")
	public void pedidopendienteList(Model model,
			@ModelAttribute("pedido") Pedido pedido) {
		List<Pedido> pedidos = pedidoManager.getPedidoPendientesList();
		
		
		model.addAttribute("pedidos", pedidos);
		model.addAttribute("pedido", pedido);
		
	}
	
		
	
	
}