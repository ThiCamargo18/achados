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
    <title>Inscreva-se</title>
</head>

<body>
    <div class="perfil-fonte">
        <div class="container col-6 espaco-cima-grande fundo-cadastro">

            <div class="row titulo-pag">
                <h1 class="text-center">Criar sua Conta</h1>
            </div>


            <form  method="post" class="row g-3">

                <div class="col-md-12">
                    <label class="form-label">Nome</label>
                    <input type="text" class="form-control" name="nome" required
                        oninvalid="this.setCustomValidity('Digite seu nome')" oninput="this.setCustomValidity('')">
                </div>

                <div class="col-6">
                    <label class="form-label">E-mail</label>
                    <input type="text" class="form-control" name="email">
                </div>

                <div class="col-6">
                    <label class="form-label">Usuario</label>
                    <input type="text" class="form-control" name="usuario">
                </div>

                <div class="col-md-6">
                    <label class="form-label">Senha</label>
                    <input type="text" class="form-control" name="senha">
                </div>

                <div class="col-md-6">
                    <label class="form-label">Confirmar Senha</label>
                    <input type="text" class="form-control" name="confirmarSenha">
                </div>

                <div class="col-4">
                    <label class="form-label">Telefone</label>
                    <input type="text" class="form-control" name="telefone">
                </div>

                <div class="col-md-4">
                    <label class="form-label">Celular</label>
                    <input type="text" class="form-control" name="celular">
                </div>

                <div class="col-4">
                    <label class="form-label">CPF</label>
                    <input type="text" class="form-control" name="cpf">
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

                <button class="btn btn-primary" style="margin-top: 10px;" type="submit">Salvar</button>

            </form>


        </div>
    </div>
</body>

</html>