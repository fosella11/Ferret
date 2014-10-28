package org.joedayz.corespringtest.dao.impl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.joedayz.corespringtest.dao.PedidoDao;
import org.joedayz.corespringtest.model.Pedido;
import org.joedayz.corespringtest.model.Product;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.orm.hibernate3.SessionFactoryUtils;
import org.springframework.stereotype.Repository;


@Repository
public class PedidoDaoImpl implements PedidoDao {
	
	private HibernateTemplate hibernateTemplate;
	private JdbcTemplate jdbcTemplate;
			
	@Autowired
	public PedidoDaoImpl(SessionFactory sessionFactory) {
		this.hibernateTemplate = new HibernateTemplate(sessionFactory);
		this.jdbcTemplate = new JdbcTemplate(SessionFactoryUtils.getDataSource(sessionFactory));
	}

	public void deletePedido(Integer idPedido) {
		Pedido pedido = getPedidoById(idPedido);
		hibernateTemplate.delete(pedido);
	}

	public Pedido getPedidoById(Integer idPedido) {
		Pedido pedido = (Pedido) hibernateTemplate.get(Pedido.class, idPedido);
		return pedido;
	}

	@SuppressWarnings("unchecked")
	public List<Pedido> getPedidosList(Pedido pedido) {
		
		StringBuffer query = new StringBuffer(" from Pedido ");
		
		if(pedido != null && pedido.getCode() != null 
				&& pedido.getCode().length() > 0){
			
			query.append(" where upper(code) like '%").append(pedido.getCode().
					toUpperCase()).append("%' ");
		}
		
		List<Pedido> list = (List<Pedido>)
				  hibernateTemplate.find(query.toString());
		return list;
	}
	
	

	public void savePedido(Pedido pedido) {

		hibernateTemplate.saveOrUpdate(pedido);
	}
	
	
public boolean isRepeatDescription(String code, Integer idPedido){
		
		StringBuffer query = new StringBuffer();
		query.append("select count(*) from pedido ");
		query.append(" where upper(trim(code)) = '").append(code.trim().
				toUpperCase()).append("' ");
		
		if(idPedido != null){
			query.append(" and id_pedido != ").append(idPedido);
		}		

		int count = jdbcTemplate.queryForInt(query.toString());
		if(count > 0){
			return true;
		}
		return false;		
	}

	
	
@SuppressWarnings("unchecked")
public List<Pedido> getPedidoPendientesList() {
	
	StringBuffer query = new StringBuffer(" from Pedido where estado= 'pendiente' ");
	
			
	List<Pedido> list = (List<Pedido>)
			  hibernateTemplate.find(query.toString());
	return list;
}






	
	
	
}
