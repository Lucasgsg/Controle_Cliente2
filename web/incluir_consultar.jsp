<%@page import="dominio.Cliente"%>
<%@page import="util.HibernateUtil"%>
<%@page import="org.hibernate.*"%>
<%@page import="java.util.*"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transational//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Incluir/Consultar</title>
    </head>
    <body>
        <%
            Session sessao = HibernateUtil.getSessionFactory().openSession();
            Transaction transacao = sessao.beginTransaction();

            //Salva um registro na tabela
            Cliente cli = new Cliente();
            cli.setIdeCli(2);
            cli.setNomCli("Ana Luiza");
            cli.setTelCli("1234-6754");
            sessao.save(cli);
            out.print("Registro salvo com sucesso");
            out.print("<br /> <br />");

            transacao.commit();
            sessao.close();

            Session novaSessao = HibernateUtil.getSessionFactory().openSession();
            Transaction novaTransacao = novaSessao.beginTransaction();

            //Consulta um registro na tabela
            Query select = novaSessao.createQuery("from Cliente as cli where cli.ideCli = :id");
            select.setInteger("id", 1);
            List objetos = select.list();
            Cliente cliente = (Cliente) objetos.get(0);
            out.println("ID: " + cliente.getIdeCli() + "<br />");
            out.println("Nome: " + cliente.getNomCli() + "<br />");
            out.println("Telefone: " + cliente.getIdeCli());

            novaTransacao.commit();
            novaSessao.close();
        %>
    </body>
</html>