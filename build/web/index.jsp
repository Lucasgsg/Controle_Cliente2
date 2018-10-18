<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transational//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Exemplo</title>
    </head>
    <body>
        <form name="Menu" action="Menu" method="get">

            <h1>Atividade2:</h1>
            <input type="button" value="Incluir e Consultar" name="incluir_consultar"
                   onclick="openPage('incluir_consultar.jsp')"/>
            <input type="button" value="Alterar" name="alterar"
                   onclick="openPage('alterar.jsp')" />
            <input type="button" value="Excluir" name="excluir"
                   onclick="openPage('excluir.jsp')" />
            <input type="button" value="Consulta retorna 1 linha" name="consulta1l"
                   onclick="openPage('consulta1l.jsp')" />
            <input type="button" value="Consulta retorna multiplas linhas" name="consultaMl"
                   onclick="openPage('consultaMl.jsp')" />

        </form>
        <script type="text/javascript">
            function openPage(pageURL)
            {
                window.location.href = pageURL;
            }
        </script>
    </body>
</html>