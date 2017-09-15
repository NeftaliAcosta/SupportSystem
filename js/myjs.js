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

     $('.search button').click(function() {
        var busqueda = $('.search input').val();
         $(".search a").attr("href", "index.php?modulo=blog&s="+ busqueda);
     });

var noti = new Notification( "Notificación" )
setTimeout( function() { noti.close() }, 1000)

     function prueba_notificacion() {
        if (Notification) {
        if (Notification.permission !== "granted") {
        Notification.requestPermission()
        }
        var title = "Xitrus"
        var extra = {
        icon: "http://xitrus.es/imgs/logo_claro.png",
        body: "Notificación de prueba en Xitrus"
        }
        var noti = new Notification( title, extra)
        noti.onclick = {
        // Al hacer click
        }
        noti.onclose = {
        // Al cerrar
        }
        setTimeout( function() { noti.close() }, 10000)
        }
    }

});