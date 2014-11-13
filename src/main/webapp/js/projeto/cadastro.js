lista = new Array();

Projeto = {
    cadastraArquivo: function() {
        var conteudo = [];


        conteudo.push('<div style="margin-left:3%">');
        conteudo.push('<label>Nome</label>');
        conteudo.push('<input type="text" size="30" maxlength="20" class="shadow" id="nomeArquivo"/><br>');
        conteudo.push('<label>Conteudo</label>');
        conteudo.push('<textarea style="height: 400px;width: 97%" rows="10" cols="120" id="texto" class=""  />');
        conteudo.push('<br><br><center><a href="#"><img src="../img/projeto/saveFile.png" onclick="Projeto.adicionaArquivo()"/></a>    </center>');
        conteudo.push('</div>');

        Util.popUp("Cadastro Arquivo", conteudo.join(""), 550, '90%');
    },
    carregaTabela: function() {
        var aaData = [];
        for (var x in lista) {
            var aData = [];
            aData.push(lista[x].nome, "<a href='#' onclick='Projeto.editaArquivo(" + x + ")' ><img src='../img/edita.png'></img></a>", "<a href='#' onclick='Projeto.excluiArquivo(" + x + ")'><img src='../img/apaga.png'></img></a>");
            aaData.push(aData);
        }
        $('#tabela').dataTable({
            "aaData": aaData,
            "destroy": true,
            "searching": false,
            "paging": false,
            "ordering": false,
            "language": {
                "info": "",
                "sZeroRecords": "Projeto sem arquivos."
            },
            "columnDefs": [
                {
                    "width": "80%", "targets": 0
                }
            ],
        });
    },
    adicionaArquivo: function() {
        var arquivo = new Object();
        arquivo.nome = $('#nomeArquivo').val();
        arquivo.descricao = $('#texto').val();
        arquivo.status = "N";
        lista.push(arquivo);
        Projeto.carregaTabela();
    },
    grava: function(parametros) {
        var listaArquivos = new Array();
        for (var x in lista) {
            listaArquivos.push("arquivo[", x, "].nome=", lista[x].nome, "&");
            listaArquivos.push("arquivo[", x, "].descricao=", lista[x].descricao, "&");
            listaArquivos.push("arquivo[", x, "].status=", lista[x].status, "&");
        }
        listaArquivos.push("&projeto.nome=", $("#nome").val());
        $.ajax({
            url: "../projeto/grava",
            data: listaArquivos.join(""),
            dataType: "json",
            async: true,
            success: function(resposta) {
                if (resposta.resposta == "sucesso") {
                    Util.popUp("Sucesso", "Projeto cadastrado com sucesso, agora será cadastrado os arquivos", "100px", "300px");
                } else {
                    Util.popUp("Erro", "Ocorreu um erro cadastrar o Projeto.", parametros.popUpAltura, parametros.popUpLarguraa);
                }
            }
        });
    },
    excluiArquivo: function(id) {
        for (var x = id; x < lista.length - 1; x++) {
            lista[x] = lista[x + 1];
        }
        lista.pop();
        Projeto.carregaTabela();
    },
    editaArquivo: function(id) {
        var arquivo = new Object();
        for (var x in lista) {
            if (id == x) {
                arquivo.id = x;
                arquivo.nome = lista[x].nome;
                arquivo.descricao = lista[x].descricao;
                arquivo.status = lista[x].status;

                var conteudo = [];
                conteudo.push('<div style="margin-left:3%">');
                conteudo.push('<label>Nome</label>');
                conteudo.push('<input type="text" size="30" maxlength="20" value="' + arquivo.nome + '" class="shadow" id="nomeArquivo"/><br>');
                conteudo.push('<label>Conteudo</label>');
                conteudo.push('<textarea style="height: 400px;width: 97%" rows="10" cols="120" id="texto" class="shadow">' + arquivo.descricao + '</textarea>');
                conteudo.push('<br><br><center><input type="button" onclick="Projeto.gravaEdicaoArquivo()" value="Salvar"/></center>');
                conteudo.push('<input type="hidden" id="idArquivo" value="' + arquivo.id + '"/>');
                conteudo.push('<input type="hidden" id="status" value="' + arquivo.status + '"/>');
                conteudo.push('</div>');
                Util.popUp("Edição de Arquivo", conteudo.join(""), 550, '90%');

            }
        }
    },
    gravaEdicaoArquivo: function() {
        var arquivo = new Object();

        arquivo.id = $('#idArquivo').val();
        arquivo.nome = $('#nomeArquivo').val();
        arquivo.descricao = $('#texto').val();
        arquivo.status = $('#status').val();

        for (var x in lista) {
            if (x == arquivo.id) {
                lista[x] = arquivo;
                Projeto.carregaTabela();
            }
        }

    }

};
 