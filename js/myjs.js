$( document ).ready(function() {
    $('#ingresar').click(function() {
    	var usuario = $( "input[name*='email']" ).val();
    	var pass = $( "input[name*='password']" ).val();
    	var datos = new FormData();
    	datos.append("usuario",usuario);
    	datos.append("pass",pass);

    	$.ajax({
    		url:"views/modulos/ajax.php",
    		method:"POST",
    		data: datos, 
    		cache: false,
    		contentType: false, 
    		processData: false,
    		success: function( datos ){
    			if (datos==1){
    				location.href ="index.php?modulo=panel";
    			}else{
    				$("#notificacion").html('<div class="alert alert-danger"><strong>Upss!</strong> datos de acceso incorrectos.</div>');
    			}
			 }

    	});
    	return false;
	});
});