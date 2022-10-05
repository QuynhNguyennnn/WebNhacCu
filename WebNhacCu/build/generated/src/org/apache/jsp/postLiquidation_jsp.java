package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class postLiquidation_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("    <head>\n");
      out.write("        <!-- basic -->\n");
      out.write("        <meta charset=\"utf-8\">\n");
      out.write("        <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\n");
      out.write("        <!-- mobile metas -->\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("        <meta name=\"viewport\" content=\"initial-scale=1, maximum-scale=1\">\n");
      out.write("        <!-- site metas -->\n");
      out.write("        <title>[Liquidation] High shop</title>\n");
      out.write("        <meta name=\"keywords\" content=\"\">\n");
      out.write("        <meta name=\"description\" content=\"\">\n");
      out.write("        <meta name=\"author\" content=\"\">\n");
      out.write("        <!-- bootstrap css -->\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/bootstrap.min.css\">\n");
      out.write("        <!-- style css -->\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/style.css\">\n");
      out.write("        <!-- Responsive-->\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/responsive.css\">\n");
      out.write("\n");
      out.write("        <link rel=\"stylesheet\" href=\"./css/liquidation.css\">\n");
      out.write("        <!-- fevicon -->\n");
      out.write("        <link rel=\"icon\" href=\"images/fevicon.png\" type=\"image/gif\" />\n");
      out.write("        <!-- Scrollbar Custom CSS -->\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/jquery.mCustomScrollbar.min.css\">\n");
      out.write("        <!-- Tweaks for older IEs-->\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css\">\n");
      out.write("        <!-- owl stylesheets -->\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/owl.carousel.min.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/owl.theme.default.min.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.css\" media=\"screen\">\n");
      out.write("        <!--[if lt IE 9]>\n");
      out.write("          <script src=\"https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js\"></script>\n");
      out.write("          <script src=\"https://oss.maxcdn.com/respond/1.4.2/respond.min.js\"></script><![endif]-->\n");
      out.write("        <link rel=\"stylesheet\" href=\"font/themify-icons/themify-icons.css\">\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div class=\"header_section header_main\">\n");
      out.write("            ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "Header.jsp", out, false);
      out.write("\n");
      out.write("            </div>\n");
      out.write("            <div style=\"\n");
      out.write("                 background-image: url('/images/tam-removebg-preview.png');\n");
      out.write("                 background-repeat: no-repeat;\n");
      out.write("                 background-size: contain;\" \n");
      out.write("                 class=\"collection_section layout_padding \">\n");
      out.write("                <div class=\"container\">\n");
      out.write("                    <h1 class=\"new_text text-center\"><strong>Add Liquidation Product</strong></h1>\n");
      out.write("\n");
      out.write("                    <p class=\"consectetur_text \">Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptas accusantium explicabo accusamus tempore reprehenderit voluptatem debitis adipisci autem nulla sed.</p>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("            <!-- new collection section end -->\n");
      out.write("            <!-- New Arrivals section start -->\n");
      out.write("            <div style=\"background-color: #96CEB4;\" class=\"layout_padding gallery_section \">\n");
      out.write("                <div class=\"container\" style=\"max-width: 1000px;\">\n");
      out.write("                    <form action=\"PostControl\" method=\"post\" style=\"margin-top: 174px;\">\n");
      out.write("                        <div class=\"form-group\">\n");
      out.write("                            <label for=\"title\"></label>\n");
      out.write("                            <input type=\"text\" class=\"form-control\" name=\"title\" id=\"title\" placeholder=\"Title\">\n");
      out.write("                        </div>\n");
      out.write("\n");
      out.write("                        <div class=\"form-group\">\n");
      out.write("                            <label for=\"description\"></label>\n");
      out.write("                            <textarea class=\"form-control\" name=\"description\" id=\"description\" placeholder=\"Description\" rows=\"3\"></textarea>\n");
      out.write("                        </div>\n");
      out.write("\n");
      out.write("                        <div class=\"form-group\">\n");
      out.write("                            <label for=\"price\"></label>\n");
      out.write("                            <input type=\"text\" class=\"form-control\" name=\"price\" id=\"price\" placeholder=\"Price\">\n");
      out.write("                        </div>\n");
      out.write("\n");
      out.write("                        <div class=\"form-group\">\n");
      out.write("                            <label for=\"image\"></label>\n");
      out.write("                            <input type=\"text\" class=\"form-control\" name=\"image\" id=\"image\" placeholder=\"Image URI\">\n");
      out.write("                        </div>\n");
      out.write("\n");
      out.write("                        <div class=\"form-group\">\n");
      out.write("                            <label for=\"contactDesc\"></label>\n");
      out.write("                            <input type=\"text\" class=\"form-control\" name=\"contactDesc\" id=\"contactDesc\" placeholder=\"Contact Description\">\n");
      out.write("                        </div>\n");
      out.write("\n");
      out.write("                        <button type=\"button\" class=\"btn btn-success\">Post</button>\n");
      out.write("                    </form>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "Footer.jsp", out, false);
      out.write("\n");
      out.write("\n");
      out.write("        <!-- Javascript files-->\n");
      out.write("        <script src=\"js/jquery.min.js \"></script>\n");
      out.write("        <script src=\"js/popper.min.js \"></script>\n");
      out.write("        <script src=\"js/bootstrap.bundle.min.js \"></script>\n");
      out.write("        <script src=\"js/jquery-3.0.0.min.js \"></script>\n");
      out.write("        <script src=\"js/plugin.js \"></script>\n");
      out.write("        <!-- sidebar -->\n");
      out.write("        <script src=\"js/jquery.mCustomScrollbar.concat.min.js \"></script>\n");
      out.write("        <script src=\"js/custom.js \"></script>\n");
      out.write("        <!-- javascript -->\n");
      out.write("        <script src=\"js/owl.carousel.js \"></script>\n");
      out.write("        <script src=\"https:cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.js \"></script>\n");
      out.write("        <script>\n");
      out.write("            $(document).ready(function () {\n");
      out.write("                $(\".fancybox \").fancybox({\n");
      out.write("                    openEffect: \"none \",\n");
      out.write("                    closeEffect: \"none \"\n");
      out.write("                });\n");
      out.write("            });\n");
      out.write("\n");
      out.write("\n");
      out.write("            $('#myCarousel').carousel({\n");
      out.write("                interval: false\n");
      out.write("            });\n");
      out.write("\n");
      out.write("            //scroll slides on swipe for touch enabled devices\n");
      out.write("\n");
      out.write("            $(\"#myCarousel \").on(\"touchstart \", function (event) {\n");
      out.write("\n");
      out.write("                var yClick = event.originalEvent.touches[0].pageY;\n");
      out.write("                $(this).one(\"touchmove \", function (event) {\n");
      out.write("\n");
      out.write("                    var yMove = event.originalEvent.touches[0].pageY;\n");
      out.write("                    if (Math.floor(yClick - yMove) > 1) {\n");
      out.write("                        $(\".carousel \").carousel('next');\n");
      out.write("                    } else if (Math.floor(yClick - yMove) < -1) {\n");
      out.write("                        $(\".carousel \").carousel('prev');\n");
      out.write("                    }\n");
      out.write("                });\n");
      out.write("                $(\".carousel \").on(\"touchend \", function () {\n");
      out.write("                    $(this).off(\"touchmove \");\n");
      out.write("                });\n");
      out.write("            });\n");
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
