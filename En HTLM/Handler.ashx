<%@ WebHandler Language="C#" Class="Handler" %>

using System;
using System.Web;
using System.Web.UI;


public class Handler : IHttpHandler {
   
    public void ProcessRequest (HttpContext context) {
        context.Response.ContentType = "text/plain";
        
        string nombre = "";
        string password = "";
        string resultado;
        bool validado = false;


        nombre = context.Request.Form["nombre"];
        password = context.Request.Form["pass"];

        if (password == "12345")
        {
            resultado = "Bienvenido " + nombre + "</br>";
            resultado = resultado + " Ya estas logeado!";
            context.Response.Write(resultado);

        }
        else
        {

            context.Response.Write(validado);

        }
        
    }
 
    public bool IsReusable {
        get {
            return false;
        }
    }

}