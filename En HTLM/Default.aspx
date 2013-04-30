<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<title>Home</title>
    <link href="NivoSlider/nivo-slider.css" rel="stylesheet" type="text/css" />
    <link href="NivoSlider/themes/default/default.css" rel="stylesheet" type="text/css" />
    <link href="NivoSlider/themes/bar/bar.css" rel="stylesheet" type="text/css" />
    <link href="NivoSlider/themes/dark/dark.css" rel="stylesheet" type="text/css" />
    <link href="NivoSlider/themes/light/light.css" rel="stylesheet" type="text/css" />
    <script src="NivoSlider/jquery.nivo.slider.js" type="text/javascript"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


    <aside>
	    <div id="datosUsuario">

	    </div>

    </aside>
	
    <header>
		   
        <div class="slider-wrapper theme-default">
            <div id="slider" class="nivoSlider">
                <img src="NivoSlider/images/toystory.jpg" data-thumb="NivoSlider/images/toystory.jpg" alt="" />
                <a href="http://dev7studios.com"><img src="NivoSlider/images/up.jpg" data-thumb="NivoSlider/images/up.jpg" alt="" /></a>
                <img src="NivoSlider/images/walle.jpg" data-thumb="NivoSlider/images/walle.jpg" alt="" data-transition="slideInLeft" />
                <img src="NivoSlider/images/nemo.jpg" data-thumb="NivoSlider/images/nemo.jpg" alt="" />
            </div>
            
        </div>

    </header>
    <section id="puntosInteres">
        
	    <article id="diseno">
		    <h2>Diseño Web</h2>
            <p>Creamos paginas 100% adaptableas a cualquier dispositivo o tamaño de pantalla.</p>
            <div class="desc">Holaaaa</div>
	    </article>
        
	    <article id="mantenimiento">
		    <h2>Mantenimiento Web</h2>
            <p>Creamos paginas 100% adaptableas a cualquier dispositivo o tamaño de pantalla.</p>
             <div class="desc">mantenimientooo</div>
	    </article>
       
	    <article id="programacion">
		    <h2>Programación Web</h2>
            <p>Creamos paginas 100% adaptableas a cualquier dispositivo o tamaño de pantalla.</p>
            <div class="desc">progrmacionnnnn</div>
	    </article>
	    <article id="rediseno">
		    <h2>Rediseño Web</h2>
            <p>Creamos paginas 100% adaptableas a cualquier dispositivo o tamaño de pantalla.</p>
            <div class="desc">rediseñooooo</div>
	    </article>
        
     </section>

</asp:Content>


