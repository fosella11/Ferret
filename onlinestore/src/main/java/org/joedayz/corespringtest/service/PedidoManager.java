package org.joedayz.corespringtest.service;

import java.util.List;

import org.joedayz.corespringtest.model.Category;
import org.joedayz.corespringtest.model.Pedido;
import org.joedayz.corespringtest.model.Product;

public interface PedidoManager {

	
	public List<Pedido> getPedidosList(Pedido pedido);
	public Pedido getPedidoById(Integer idPedido);
	public void savePedido(Pedido pedido);
	public void deletePedido(Integer idPedido);
	
	
	public boolean isRepeatDescription(String code, Integer idPedido);
	
	public List<Pedido> getPedidoPendientesList();

	
}
