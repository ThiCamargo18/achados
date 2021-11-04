<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link href="<c:url value="/css/estilo.css"/>" rel="stylesheet" type="text/css">

    <title>Perfil</title>
</head>

<body>
    <div id="perfil" class="perfil-fonte">
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <div class="collapse navbar-collapse" id="navbarNavDropdown">
                <ul class="navbar-nav w-100">
                    <li class="nav-item">
                        <a class="nav-link" id="nav-item1" href="#">Achados e Perdidos</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Doações</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Sobre nós</a>
                    </li>
                </ul>
                <div class="dropdown">
                    <button class="dropbtn">Nome do Usuário</button>
                    <div class="dropdown-content">
                        <a href="#">Perfil</a>
                        <a href="#">Meus Achados</a>
                        <a href="#">Meus Perdidos</a>
                        <a href="#">Doações</a>
                        <a href="#">Sair</a>
                    </div>
                </div>
        </nav>

        <div class="centralizar-pagina">
            <div class="card">
                <div>
                    <h1 class="bem-vindo">Bem vindo!</h1>
                </div>
                <div>
                    <a href="cadastroAchado.jsp" class="btn bem-vindo-btn">Encontrou algo?</a>
                </div>
            </div>
        </div>
    </div>
</body>

</html>