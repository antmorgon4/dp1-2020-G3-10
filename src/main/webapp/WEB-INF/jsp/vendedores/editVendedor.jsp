<%@ page session="false" trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="petclinic" tagdir="/WEB-INF/tags" %>


<petclinic:layout pageName="vendedor">
    <jsp:attribute name="customScript">
        
    </jsp:attribute>
    <jsp:body>
        <h2>Vendedor</h2>
        <form:form modelAttribute="vendedor" class="form-horizontal" action="/vendedores/save">
            <div class="form-group has-feedback">
                <petclinic:inputField label="firstName" name="firstName"/>
                <petclinic:inputField label="lastName" name="lastName"/>
                <petclinic:inputField label="Valoracion" name="valoracion"/>
                <petclinic:inputField label="Vacaciones" name="vacaciones"/>
                <petclinic:inputField label="nombre tienda" name="nombreTienda"/>
                <petclinic:inputField label="direccion tienda" name="direccionTienda"/>
                <c:if test="${vendedor['new']}">
                <petclinic:inputField label="usuario" name="user.username"/>
                <petclinic:inputField label="contrase�a" name="user.password"/>
                </c:if>
            </div>
            
            
            <div class="form-group">
				<div class="col-sm-offset-2 col-sm-10">
				<c:choose>
						<c:when test="${vendedor['new']}">
							<div class="col-sm-offset-2 col-sm-10">
                    <input type="hidden" name="vendedorId" value="${vendedor.id}"/>
                    <button class="btn btn-default" type="submit">Add Vendedor</button>
                </div>
						</c:when>
						<c:otherwise>
							<button class="btn btn-default" type="submit">Actualizar vendedor</button>
						</c:otherwise>
				</c:choose>
				</div>
			</div>

            <div class="form-group">
            
            
            
               
            </div>
        </form:form>

        
    </jsp:body>

</petclinic:layout>
