package org.joedayz.corespringtest.model;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;

public class Pedido  implements java.io.Serializable {

	private Integer idPedido;
	private String code;
	private String calle;
	
	private String producto1;
	private String producto2;
	
	private BigDecimal total;
    
	private String estado;
	
	private static final long serialVersionUID = 7555979582447592770L;

	
	public Pedido() {
	}


//
	
	


	public String getCalle() {
		return calle;
	}



	public Pedido(Integer idPedido, String code, String calle, String producto1,
		String producto2, BigDecimal total, String estado) {
	super();
	this.idPedido = idPedido;
	this.code = code;
	this.calle = calle;
	this.producto1 = producto1;
	this.producto2 = producto2;
	this.total = total;
	this.estado = estado;
}


	public void setCalle(String calle) {
		this.calle = calle;
	}


	public Integer getIdPedido() {
		return idPedido;
	}


	public void setIdPedido(Integer idPedido) {
		this.idPedido = idPedido;
	}



	public String getCode() {
		return code;
	}


	public void setCode(String code) {
		this.code = code;
	}


	public BigDecimal getTotal() {
		return total;
	}


	public void setTotal(BigDecimal total) {
		this.total = total;
	}









	public String getProducto1() {
		return producto1;
	}


	public void setProducto1(String producto1) {
		this.producto1 = producto1;
	}


	public String getProducto2() {
		return producto2;
	}


	public void setProducto2(String producto2) {
		this.producto2 = producto2;
	}


	public String getEstado() {
		return estado;
	}


	public void setEstado(String estado) {
		this.estado = estado;
	}
	
	
	
	
	
	
	
	
}
