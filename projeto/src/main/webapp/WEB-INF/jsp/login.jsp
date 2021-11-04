<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width = device-width, initial-scale=1.0">
    <link href="<c:url value="/css/estilo.css"/>" rel="stylesheet" type="text/css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <title>Instagram</title>
</head>

<body id="login">
    <div class="fundo">
        <div class="img-cel">
            <img src="img/celular.png">
        </div>
        <div class="fundo-login">
            <div class="grupo">
                <h1 class="margin-abaixo">ACHADOS E PERDIDOS</h1>
                <form class="margin-abaixo" method="get" action="loginSenha">
                    <input type="text" name="cpf" class="form-text" id="" placeholder="CPF"><br>
                    <center><button type="submit" class="btn btn-primary">Entrar</button></center>
                </form>
                <div>
                    <a href="#" class="">Esqueceu a senha?</a>
                </div>
            </div>
            <div class="grupo">
                <p class="">Não tem uma conta?</p>
                <p class=""><a href="/inscrever">Inscreva-se</a></p>
            </div>
            <div class="baixe-app">
                <p class="">Baixe o aplicativo</p>
                <div class="download-fundo">
                    <a href="#" class="download"></a>
                    <a href="#" class="download"></a>
                </div>
            </div>
        </div>
    </div>
</body>

</html>