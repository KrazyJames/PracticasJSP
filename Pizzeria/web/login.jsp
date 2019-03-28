
<%
    String simulador = "uncorreo@xdxd.com";
    String psw = "1234";
    boolean correcto = true;
    if (request.getParameter("correo") != null) {
        String correo = request.getParameter("correo");
        String contrasena = request.getParameter("contrasena");
        boolean recordar = Boolean.valueOf(request.getParameter("recordar"));
        if (simulador.equals(correo) && contrasena.equals(psw)) {
            session.setAttribute("id", 1);
            session.setAttribute("nombre", "Un wey");
            session.setAttribute("email", simulador);
            session.setAttribute("perfi", "Admin");
        } else {
            correcto = false;
        }
    }
    if (session != null && session.getAttribute("id") != null && Integer.parseInt(session.getAttribute("id").toString()) > -1) {
        response.sendRedirect("menu.jsp");
    }
%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">
        <link rel="stylesheet" href="bootstrap/bootstrap-4.3.1-dist/css/bootstrap.min.css">
        <link rel="stylesheet" href="css/login.css">
        <script src="bootstrap/bootstrap-4.3.1-dist/js/jQuery-v3.1.1.min.js"></script>
        <title>Login</title>
    </head>
    <body>
        <div class="container-fluid vh-100 bg-verde">
            <div class="container">
                <div class="w-25 m-auto vertical">
                    <div class="w-100">
                        <img src="img/logo.png" alt="" class="d-block m-auto">
                    </div>
                    <form action="login.jsp" method="POST">
                        <div <%=correcto ? "style=\"display:none;\"":""%>class="alert alert-danger" role="alert">
                            Email o contrasena invalidos
                        </div>
                        <div class="form-group">
                            <label for="exampleInputEmail1">Email address</label>
                            <input type="email" class="form-control" name="correo" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email">
                            <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
                        </div>
                        <div class="form-group">
                            <label for="exampleInputPassword1">Password</label>
                            <input type="password" class="form-control" name="contrasena" id="exampleInputPassword1" placeholder="Password">
                        </div>
                        <div class="form-group form-check">
                            <input type="checkbox" class="form-check-input" id="exampleCheck1" name="recordar" value="true">
                            <label class="form-check-label" for="exampleCheck1">Check me out</label>
                        </div>
                        <button type="submit" class="btn btn-primary float-right">Submit</button>
                    </form>
                </div>
            </div>

        </div>
        <script src="bootstrap/bootstrap-4.3.1-dist/js/bootstrap.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    </body>
</html>