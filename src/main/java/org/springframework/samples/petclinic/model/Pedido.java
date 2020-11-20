package org.springframework.samples.petclinic.model;

import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.Table;
import javax.validation.Valid;
import javax.validation.constraints.NotEmpty;

import lombok.Data;

@Data
@Entity
@Table(name="pedido")
public class Pedido extends BaseEntity {
	
	@NotEmpty
	private EstadoPedido estado;
	
	/*
	@JoinColumn(name = "cliente_id")
	@Valid
	@NotEmpty
	private Cliente cliente;
	*/
	
	/*
	@NotEmpty
	private Vendedor vendedor;
	
	private List<Producto> contenido;
	
	@NotEmpty
	private List<Mensaje> mensajes;
	*/
}
