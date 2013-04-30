$(document).on("ready", inicio);
	
	function inicio()
	{
	    $(".login a").on("click", AbrirLogin);
	    $(window).load(NivoSlider);
	    $("#puntosInteres article").mouseover(mostrarDesc); 
	        
	   
	}

	function AbrirLogin(data)
	{
		css = 
		{
			display: "none"

		};
		$(".login").css(css);
		$("#DivLogin").show("slow");
		$("#close").on("click", CerrarLogin);
		$("#submit").on("click", EnviarForm);



	}

	function CerrarLogin(data)
	{

		css2 = 
		{
			display: "block"

		};
		$("#error").html("");
		$(".login a").off("click", AbrirLogin);
		$("#DivLogin").hide("slow");
		$(".login").css(css2);
		$(".login a").on("click", AbrirLogin);
		
	}

	function EnviarForm() {

	    // ya no funciona la linea de abajo, porque le cambie .submit por .on("click", EnviarForm)
	    //var data = $("#DivLogin").serialize();
        var data =
	            $("#nombre").val();
	            $("#pass").val();
       

        $.post("Handler.ashx", data, function (respuesta) {
            if (respuesta == "False") 
            	{
                $("#error").html("¡Usuario o contraseña incorrecta!");

            	}
            else 
            	{
                $("#error").html("");
                $("#datosUsuario").show("slow");
                $("#datosUsuario").html(respuesta);
                $(".login").css("display","none");
                $("#DivLogin").hide("slow");
                $(".logout").css("display","block");
                $(".logout a").on("click", Logout);

                }

        });
        return false;

        

	}

	function Logout()
	{
		$("#datosUsuario").hide("slow");
		$(".logout").css("display","none");
		$(".login").css("display","block");
		$(".login a").on("click", AbrirLogin);
    }

    function NivoSlider()
    {
    $("#slider").nivoSlider();
	}

	function mostrarDesc(datos) 
    {
        var idDesc = datos.currentTarget.id;
        $("#"+idDesc+" .desc").show();
        $("#"+idDesc).mouseout(ocultarDesc);

    }

    function ocultarDesc(datos) 
    {
        var idDesc = datos.currentTarget.id;
        $("#"+idDesc+" .desc").hide();
    }