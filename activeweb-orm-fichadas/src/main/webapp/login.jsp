<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <h1 >Iniciar Sesion</h1>
        <form name="j_security_form" method="post" action="j_security_check">
            <label for="user">Usuario</label>
            <input type="text" name="j_username" id="user" placeholder="Usuario"/>
            
            <label for="Password">Password</label>
            <input type="password" name="j_password" id="Password" placeholder="Password"/>
                            
            <button type="submit">Continuar</button>
        </form>
        
    </body>
</html>
