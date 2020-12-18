<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page session="false" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="petclinic" tagdir="/WEB-INF/tags"%>


<petclinic:layout pageName="descripcionPelicula">



	<table class="table table-striped">
		<td><img src=<c:out value="${pelicula.imagen}"/> width="250"
			height="350"></td>
		<tr>

			<td><c:out value="${pelicula.nombre}" /></td>
		</tr>
		<tr>
			<td><c:out value="${pelicula.precio}" /></td>
		</tr>
		<tr>
			<td><c:out value="${pelicula.agno}" /></td>
		</tr>
		<tr>
			<td><c:out value="${pelicula.director}" /></td>
		</tr>
		<tr>
			<td><c:out value="${pelicula.duracion}" /></td>
		</tr>
		<tr>
			<td><c:out value="${pelicula.sinopsis}" /></td>
		</tr>
	</table>


	<spring:url value="/peliculas/{peliculaId}/delete" var="deleteUrl">
		<spring:param name="peliculaId" value="${pelicula.id}" />
	</spring:url>
	<a href="${fn:escapeXml(deleteUrl)}" class="btn btn-default">Borrar pelicula</a>





</petclinic:layout>