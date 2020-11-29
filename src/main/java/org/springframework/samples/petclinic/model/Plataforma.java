package org.springframework.samples.petclinic.model;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.ManyToMany;
import javax.persistence.Table;
import javax.validation.constraints.NotEmpty;

import lombok.Data;

@Data
@Entity
@Table(name = "plataforma")
public class Plataforma extends BaseEntity {
	
	@NotEmpty
	private String nombre;
	
	@NotEmpty
	private String descripcion;
	
	@ManyToMany(cascade = CascadeType.ALL)
	private List<Cliente> clientes;

	
}
