var ConsultaUsuario = {
    removeUsuario: function(id) {
        ConsultaUsuario.enviaRequisicao(Util.parametros("../usuario/remove", "id=" + id, "json", true, "Sucesso", "Usuário removido com sucesso", "100px", "300px"));
    },
    enviaRequisicao: function(parametros) {
        $.ajax({
            url: parametros.url,
            data: parametros.data,
            dataType: parametros.tipo,
            async: parametros.async,
            success: function(resposta) {
                if (resposta.resposta == "sucesso") {
                    Util.popUp(parametros.popUpTitulo, parametros.popUpTexto, parametros.popUpAltura, parametros.popUpLargura);
                } else {
                    Util.popUp("Erro", "Ocorreu um erro ao excluir o usuário.", parametros.popUpAltura, parametros.popUpLarguraa);
                }
            }
        });


    },
    carregaLista: function() {
        $.ajax({
            url: "../usuario/consultaUsuarios",
            type: 'GET',
            dataType: 'JSON',
            async: true,
            success: function(resposta) {
                var lista = resposta;
                var usuarios = lista.list;
                var aaData = [];
                for (var x in usuarios) {
                    var aData = [];
                    aData.push(usuarios[x].nome, usuarios[x].login, usuarios[x].email, usuarios[x].perfil);
                    if (usuarios[x].perfil == "ADMINISTRADOR") {
                        aData.push("-");
                    } else {
                        aData.push("<a href='../usuario/edicao?id=" + usuarios[x].id + "'><img src='../img/edita.png'></img></a>");
                    }
                    if (usuarios[x].perfil == "ADMINISTRADOR") {
                        aData.push("-");
                    } else {
                        aData.push("<a href='#'onclick='ConsultaUsuario.removeUsuario(" + usuarios[x].id + ")'><img src='../img/apaga.png'></img></a>");

                    }
                    aaData.push(aData);
                }
                $('#tabela').dataTable({
                    "bPaginate": true,
                    "bJQueryUI": false,
                    "sPaginationType": "full_numbers",
                    "aaData": aaData,
                    "oLanguage": {
                        "sSearch": "Procurar:",
                        "sLengthMenu": "Exibir _MENU_ resultados",
                        "sZeroRecords": "Não foram encontrados resultados.",
                        "sInfoFiltered": " - encontrado(s) de _MAX_ registros.",
                        "sInfo": "Total de resultados encontrados _TOTAL_. Visualizando (_START_ de _END_)",
                        "sLoadingRecords": "Carregando...",
                        "sInfoEmpty": "Não foi encontrado nenhum usuário.",
                        "oPaginate": {
                            "sFirst": "Primeira",
                            "sLast": "Ultima",
                            "sPrevious": "Anterior",
                            "sNext": "Proxima"
                        }
                    }
                });
            }
        });
    },
}