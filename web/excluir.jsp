<%@page import="dominio.Cliente"%>
<%@page import="util.HibernateUtil"%>
<%@page import="org.hibernate.*"%>
<%@page import="java.util.*"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transational//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Excluir</title>
    </head>
    <body>
        <%
            Session sessao = HibernateUtil.getSessionFactory().openSession();
            Transaction transacao = sessao.beginTransaction();
            Query select = sessao.createQuery("from Cliente as cli where cli.ideCli = :id");
            select.setInteger("id", 2);
            List objeto = select.list();
            Cliente cli = (Cliente) objeto.get(0);
            sessao.delete(cli);
            out.print("Registro exclu�do com sucesso");
            out.print("<br /> <br />");
            transacao.commit();
            sessao.close();
        %>
    </body>
</html>