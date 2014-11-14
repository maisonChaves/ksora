<%@include file="../topo.jsp" %>
<%@include file="../menu.jsp" %>
<script src="<c:url value='/js/utils.js'/>"></script>

<select id="projeto" onchange="montaTabela()" class="input-control select shadow">
    <option value="">Selecione</option>
    <c:forEach items="${projetoList}" var="projeto">
        <option value="${projeto.id}">${projeto.nome}</option>
    </c:forEach>
</select>

<center><div style="width: 80%">
        <table id="tabela" class="" onblur="" style="text-align: center" width="50%" cellspacing="0">
            <thead>
                <tr>            
                    <th>${sessao.administrador}</th>                                                                   
                    <th>Nome</th>     
                    <th>Data de Atribuição</th>     
                    <th>Última Alteração</th>     
                    <th>Usuário</th>                         
                    <th>Status</th>                                                                  
                </tr>
            </thead>
            <tbody>
            </tbody>
        </table>

    </div>
</center>



<script>
    function montaTabela() {
        $.ajax({
            url: "<c:url value='/arquivo/buscaArquivos'/>?projeto.idProjeto=" + $("#projeto").val(),
            type: 'GET',
            dataType: 'JSON',
            async: true,
            success: function(resposta) {
                var lista = resposta;
                var arquivos = lista.list;
                var aaData = [];
                for (var x in arquivos) {
                    var aData = [];
                    aData.push("", arquivos[x].nome, arquivos[x].dataAtribuicao, arquivos[x].dataAlteracao, "", arquivos[x].status == "N" ? "Novo" : "");
                    aaData.push(aData);
                }

                $('#tabela').dataTable({
                    "searching": false,
                    "ordering": false,
                    "lengthMenu": [100],
                    "lengthChange": false,
                    "bJQueryUI": false,
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
    }
//        $('#tabela').DataTable({
//            "ajax": "<c:url value='/arquivo/buscaArquivos'/>?idProjeto=" + $("#projeto").val(),
//    "searching": false,
//            "ordering": true,
//            "lengthMenu": [10],
//            "lengthChange"
//    : false,
//            "oLanguage": {
//                "sLengthMenu": "Exibir _MENU_ resultados",
//                "sZeroRecords": "Não foram encontrados resultados.",
//                "sInfoFiltered": " - encontrado(s) de _MAX_ registros.",
//                "sInfo": "Total de resultados encontrados _TOTAL_. Visualizando (_START_ de _END_)",
//                "sLoadingRecords": "Carregando...",
//                "sInfoEmpty": "Não foi encontrado nenhum lançamento.",
//                "oPaginate": {
//                    "sFirst": "Primeira",
//                    "sLast": "Ultima",
//                    "sPrevious": "Anterior",
//                    "sNext": "Proxima"
//                }
//            },
//            "columns": [
//                {"list": "id"},
//                {"list": "nome"},
//                {"list": "descricao"},
//                {"list": "status"},
//                {"list": "idProjeto"}
//            ]
//        });



</script>


<%@include file="../fundo.jsp" %>