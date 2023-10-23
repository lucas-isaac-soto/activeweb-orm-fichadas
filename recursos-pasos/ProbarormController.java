package app.controllers;

import app.models.Empleado;
import org.javalite.activeweb.AppController;

public class ProbarormController extends AppController{
    
    public void index(){
        view("listaEmpleados",Empleado.obtenerTodosEmpleados());
    }
    
    public void nuevoEmpleado(){
        Empleado.nuevoEmpleado();
        redirect("/probarorm");
        redirect(ProbarormController.class, "");
    }
}
