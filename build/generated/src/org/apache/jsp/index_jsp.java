package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.01 Transational//EN\" \"http://www.w3.org/TR/html4/loose.dtd\">\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Exemplo</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <form name=\"Menu\" action=\"Menu\" method=\"get\">\n");
      out.write("\n");
      out.write("            <h1>Atividade2:</h1>\n");
      out.write("            <input type=\"button\" value=\"Incluir e Consultar\" name=\"incluir_consultar\"\n");
      out.write("                   onclick=\"openPage('incluir_consultar.jsp')\"/>\n");
      out.write("            <input type=\"button\" value=\"Alterar\" name=\"alterar\"\n");
      out.write("                   onclick=\"openPage('alterar.jsp')\" />\n");
      out.write("            <input type=\"button\" value=\"Excluir\" name=\"excluir\"\n");
      out.write("                   onclick=\"openPage('excluir.jsp')\" />\n");
      out.write("            <input type=\"button\" value=\"Consulta retorna 1 linha\" name=\"consulta1l\"\n");
      out.write("                   onclick=\"openPage('consulta1l.jsp')\" />\n");
      out.write("            <input type=\"button\" value=\"Consulta retorna multiplas linhas\" name=\"consultaMl\"\n");
      out.write("                   onclick=\"openPage('consultaMl.jsp')\" />\n");
      out.write("\n");
      out.write("        </form>\n");
      out.write("        <script type=\"text/javascript\">\n");
      out.write("            function openPage(pageURL)\n");
      out.write("            {\n");
      out.write("                window.location.href = pageURL;\n");
      out.write("            }\n");
      out.write("        </script>\n");
      out.write("    </body>\n");
      out.write("</html>");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
