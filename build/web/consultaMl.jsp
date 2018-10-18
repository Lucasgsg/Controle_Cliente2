<%@page import="dominio.Cliente"%>
<%@page import="util.HibernateUtil"%>
<%@page import="org.hibernate.*"%>
<%@page import="java.util.*"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transational//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Consulta com retorno de apenas uma linha</title>
    </head>
    <body>
        <%
            try {
                Session sessao = HibernateUtil.getSessionFactory().openSession();
                Transaction transacao = sessao.beginTransaction();
                String sql = "select * from CLIENTE";
                Query query = sessao.createSQLQuery(sql).addEntity(Cliente.class);
                List clientes = query.list();
                for (Object objeto_cliente : clientes) {
                    Cliente cli = (Cliente) objeto_cliente;
                    out.print("Nome : " + cli.getNomCli());
                    out.print("<br /> Telefone : " + cli.getTelCli());
                    out.print("<br /> <br />");
                }
                transacao.commit();
                sessao.close();
            } catch (Exception e) {
                out.print("Erro na consulta " + e.getMessage());
            }
        %>
    </body>
</html>