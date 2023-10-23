package app.models;


import java.sql.Timestamp;
import java.util.List;
import org.javalite.activejdbc.Model;
import org.javalite.activejdbc.annotations.Table;

@Table("fichadas.empleado")
public class Empleado extends Model{
    
    public static List<Empleado> obtenerTodosEmpleados(){
        List<Empleado> todos = Empleado.findAll();
        return todos;
    }
    
    public static void nuevoEmpleado(){
        Timestamp fecha = Timestamp.valueOf("2023-01-01 00:00:00");
        
        Empleado empleado = new Empleado();
        empleado.set("nombre", "nuevo_NOMBRE");
        empleado.set("apellido", "nuevo_APELLIDO");
        empleado.set("correo", "nuevo_CORREO@CORREO.COM");
        empleado.set("documento", 7777777);
        empleado.set("id_ciudad", 1);
        empleado.set("id_sucursal", 1);
        empleado.set("fecha_nacimiento", fecha);
        empleado.set("sueldo", 150000);
        empleado.saveIt();
    }
    
    
    
}
