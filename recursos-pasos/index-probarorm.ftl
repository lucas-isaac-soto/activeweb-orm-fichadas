LISTA DE TODOS LOS EMPLEADOS

<table>
    <thead>
        <th >id</th>
        <th >nombre</th>
        <th >apellido</th>
        <th >correo</th>
        <th >documento</th>
        <th >id_ciudad</th>
        <th >id_sucursal</th>
        <th >fecha de nacimiento</th>
        <th >fecha de baja</th>
        <th >sueldo</th>
    </thead>

    <tbody>
        <#list listaEmpleados as empleado>
            <tr>
                <td >${empleado.id}</td>
                <td >${empleado.nombre}</td>
                <td >${empleado.apellido}</td>
                <td >${empleado.correo}</td>
                <td >${empleado.documento}</td>
                <td >${empleado.id_ciudad}</td>
                <td >${empleado.id_sucursal}</td>
                <td >${empleado.fecha_nacimiento}</td>
                <td >
                    <#if empleado.fecha_baja?exists>
                        ${empleado.fecha_baja}
                    <#else>
                        ---
                    </#if>
                        
                </td>
                <td >${empleado.sueldo}</td>
            </tr>
        </#list>
    </tbody>
</table>
