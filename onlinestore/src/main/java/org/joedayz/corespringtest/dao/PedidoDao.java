package org.joedayz.corespringtest.dao;

import java.util.List;

import org.joedayz.corespringtest.model.Pedido;
import org.joedayz.corespringtest.model.Product;

public interface PedidoDao {

	public List<Pedido> getPedidosList(Pedido Pedido);
	public Pedido getPedidoById(Integer idPedido);
	public void savePedido(Pedido Pedido);
	public void deletePedido(Integer idPedido);
	
	public boolean isRepeatDescription(String code, Integer idPedido);
	
	public List<Pedido> getPedidoPendientesList();

}
