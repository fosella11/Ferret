package org.joedayz.corespringtest.service.impl;

import java.util.List;

import org.joedayz.corespringtest.dao.PedidoDao;
import org.joedayz.corespringtest.model.Pedido;
import org.joedayz.corespringtest.model.Product;
import org.joedayz.corespringtest.service.PedidoManager;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service
public class PedidoManagerImpl implements PedidoManager {

	@Autowired
	private PedidoDao pedidoDao;
	
	public void deletePedido(Integer idPedido) {
		pedidoDao.deletePedido(idPedido);
	}

	public Pedido getPedidoById(Integer idPedido) {
		return pedidoDao.getPedidoById(idPedido);
	}

	public List<Pedido> getPedidosList(Pedido pedido) {
		return pedidoDao.getPedidosList(pedido);
	}

	public void savePedido(Pedido pedido) {
		pedidoDao.savePedido(pedido);
	}

	
	public boolean isRepeatDescription(String code, Integer idPedido) {
		return pedidoDao.isRepeatDescription(code, idPedido);
	}

public List<Pedido> getPedidoPendientesList() {

		
		return pedidoDao.getPedidoPendientesList();
	}




}




