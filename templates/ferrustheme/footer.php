
    <!-- Footer -->
    <div class="container-fluid footer">
        <p>Copyright &copy; 2017 Gubynetwork.com Powered by <b>Gubynetwork.com </b></p>
    </div>
    <!-- /.container -->


    <!-- Modal -->
    <div id="myModal" class="modal fade" role="dialog">
      <div class="modal-dialog">

        <!-- Modal content-->
        <div class="modal-content">
          <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal">&times;</button>
            <h4 class="modal-title">Iniciar sesión</h4>
          </div>
          <div class="modal-body">
            <p>Hola estimado cliente, por favor ingrese su correo y contraseña para acceder al sistema de Tickets de Soporte </p>
             <form name="form" method="post" id="form" class="form-horizontal" autocomplete="off">
                <div class="input-group margin-bottom-sm">
                  <span class="input-group-addon"><i class="fa fa-envelope-o fa-fw"></i></span>
                  <input class="form-control" type="text" name="email" placeholder="Email">
                </div>
                <div class="input-group">
                  <span class="input-group-addon"><i class="fa fa-key fa-fw"></i></span>
                  <input class="form-control"  name="password" type="password" placeholder="Contraseña">
                </div>
                <input name="login" class="btn btn-success loginbtn" id="ingresar" value="Ingresar">
            </form><br>
            <div id="notificacion">
            </div>
          </div>
          <div class="modal-footer">
            <button type="button"  class="btn btn-default" data-dismiss="modal" >Cerrar</button>
          </div>
        </div>

      </div>
    </div>