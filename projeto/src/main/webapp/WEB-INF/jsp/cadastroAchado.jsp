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
    <title>Cadastro Achados</title>
</head>

<body>
    <div class="perfil-fonte">
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <div class="collapse navbar-collapse" id="navbarNavDropdown">
                <ul class="navbar-nav w-100">
                    <li class="nav-item">
                        <a class="nav-link" id="nav-item1" href="index.jsp">Achados e Perdidos</a>
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

        <div class="container col-6 espaco-cima fundo-cadastro">

            <div class="row titulo-pag">
              <h1 class="text-center">Cadastro de Achados</h1>
            </div>
        
        
            <form class="row g-3" action="cadastrar.php" method="post">
        
              <div class="col-md-12">
                <label class="form-label">Nome</label>
                <input type="text" class="form-control" name="nome" required oninvalid="this.setCustomValidity('Digite seu nome')"
            oninput="this.setCustomValidity('')">
              </div>
        
              <div class="col-md-12">
                <div class="form-group">
                    <label for="exampleFormControlTextarea1">Descrição</label>
                    <textarea class="form-control rounded-0" id="exampleFormControlTextarea1" rows="10"></textarea>
                  </div>
              </div>
        
              <div class="col-12">
                <label class="form-label">Rua</label>
                <input type="text" class="form-control" name="rua">
              </div>
        
              <div class="col-6">
                <label class="form-label">Bairro</label>
                <input type="text" class="form-control" name="bairro">
              </div>
        
              <div class="col-md-6">
                <label class="form-label">Cidade</label>
                <input type="text" class="form-control" name="cidade">
              </div>
        
              <div class="col-md-4">
                <label class="form-label">Estado</label>
                <select name="estado" class="form-select">
                  <option>ES</option>
                  <option>MG</option>
                  <option>RJ</option>
                  <option selected>SP</option>
                </select>
              </div>
        
              <div class="col-md-2">
                <label class="form-label">CEP</label>
                <input type="text" class="form-control" name="cep">
              </div>

              <div class="col-md-6">
                <div class="form-group">
                    <p>Importar Imagem</p>
                    <input type="file" class="form-control-file" id="exampleFormControlFile1">
                  </div>
              </div>
        
              <div class="col-12 espaco-cima">
                <button type="submit" class="btn btn-primary">Cadastrar</button>
              </div>
        
            </form>

        
          </div>
    </div>
</body>

</html>