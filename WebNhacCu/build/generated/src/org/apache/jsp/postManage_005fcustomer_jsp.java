package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class postManage_005fcustomer_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("    <head>\n");
      out.write("        <meta charset=\"utf-8\">\n");
      out.write("        <meta http-equiv=\"x-ua-compatible\" content=\"ie=edge\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("        <title>HighShop</title>\n");
      out.write("        <link rel=\"stylesheet\" href=\"/css/style2.css\">\n");
      out.write("        <script src=\"/js/cart.js\"></script>\n");
      out.write("\n");
      out.write("        <!-- bootstrap css -->\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/bootstrap.min.css\">\n");
      out.write("        <!-- style css -->\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/style.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/style2.css\">\n");
      out.write("        <link href=\"/css/modal.css\" rel=\"stylesheet\" type=\"text/css\" />\n");
      out.write("        <!-- Responsive-->\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/responsive.css\">\n");
      out.write("        <!-- fevicon -->\n");
      out.write("        <link rel=\"icon\" href=\"images/fevicon.png\" type=\"image/gif\" />\n");
      out.write("        <!-- Scrollbar Custom CSS -->\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/jquery.mCustomScrollbar.min.css\">\n");
      out.write("        <!-- Tweaks for older IEs-->\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css\">\n");
      out.write("        <!-- owl stylesheets -->\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/owl.carousel.min.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/owl.theme.default.min.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.css\"\n");
      out.write("              media=\"screen\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"font/themify-icons/themify-icons.css\">\n");
      out.write("    </head>\n");
      out.write("\n");
      out.write("    <body>\n");
      out.write("        <div class=\"header_section header_main\">\n");
      out.write("            ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "Header.jsp", out, false);
      out.write("\n");
      out.write("            </div>\n");
      out.write("            <div class=\"container\" style=\"overflow-x: scroll;\">\n");
      out.write("<!--                <div class=\"basket-module\">\n");
      out.write("                    <a style=\"background-color: #28a745; margin: 24px 0;\" href=\"#addProductModal\" class=\"btn btn-success\" data-toggle=\"modal\"><i class=\"material-icons\"></i> <span>Add New Product</span></a>\n");
      out.write("                </div>-->\n");
      out.write("\n");
      out.write("\n");
      out.write("                <table class=\"table\">\n");
      out.write("                    <thead>\n");
      out.write("                        <tr>\n");
      out.write("                            <th style=\"width:10%\" class=\"text-center\">Item</th>\n");
      out.write("                            <th class=\"text-center\">title</th>\n");
      out.write("                            <th class=\"text-center\">Description</th>\n");
      out.write("                            <th class=\"text-center\">Contact Description</th>\n");
      out.write("                            <th class=\"text-center\">Price</th>\n");
      out.write("                            <th class=\"text-center\">Sell status</th>\n");
      out.write("<!--                            <th class=\"text-center\"></th>\n");
      out.write("                            <th class=\"text-center\"></th>-->\n");
      out.write("                        </tr>\n");
      out.write("                    </thead>\n");
      out.write("                    <tbody>\n");
      out.write("                        <tr>\n");
      out.write("                            <td>\n");
      out.write("                                <img src=\"./images/bamboo_flute.jpg\" alt=\"\" class=\"img-responsive\">\n");
      out.write("                            </td>\n");
      out.write("                            <td>Lorem ipsum, dolor sit amet consectetur adipisicing elit.</td>\n");
      out.write("                            <td>\n");
      out.write("                                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Ab quam reiciendis fuga ratione illo\n");
      out.write("                                    culpa quod nesciunt nihil fugiat placeat!</p>\n");
      out.write("                            </td>\n");
      out.write("                            <td>\n");
      out.write("                                <p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Laudantium dolor sint laborum\n");
      out.write("                                    architecto labore asperiores vitae blanditiis quod sequi sapiente? Tenetur error magni sit\n");
      out.write("                                    et, perferendis optio veritatis obcaecati iusto?</p>\n");
      out.write("                            </td>\n");
      out.write("                            <td>\n");
      out.write("                                200 <span>$</span>\n");
      out.write("                            </td>\n");
      out.write("                            <td>\n");
      out.write("                                0\n");
      out.write("                            </td>\n");
      out.write("<!--                            <td>\n");
      out.write("                                <button type=\"button\" class=\"btn btn-success\">Accept</button>\n");
      out.write("                            </td>\n");
      out.write("                            <td>\n");
      out.write("                                <button type=\"button\" class=\"btn btn-warning\">Reject</button>\n");
      out.write("                            </td>-->\n");
      out.write("                        </tr>\n");
      out.write("                        <tr>\n");
      out.write("                            <td>\n");
      out.write("                                <p>Load image here</p>\n");
      out.write("                            </td>\n");
      out.write("                            <td>\n");
      out.write("                                Load title here\n");
      out.write("                            </td>\n");
      out.write("                            <td>\n");
      out.write("                                <p>Load description of Product here</p>\n");
      out.write("                            </td>\n");
      out.write("                            <td>\n");
      out.write("                                <p>Load contact description here</p>\n");
      out.write("                            </td>\n");
      out.write("                            <td>\n");
      out.write("                                <p>Load price here</p>\n");
      out.write("                            </td>\n");
      out.write("                            <td>\n");
      out.write("                                <p>Load sell status here</p>\n");
      out.write("                            </td>\n");
      out.write("<!--                            <td>\n");
      out.write("                                <button type=\"button\" class=\"btn btn-success\">Accept</button>\n");
      out.write("                            </td>\n");
      out.write("                            <td>\n");
      out.write("                                <button type=\"button\" class=\"btn btn-warning\">Reject</button>\n");
      out.write("                            </td>-->\n");
      out.write("                        </tr>\n");
      out.write("                    </tbody>\n");
      out.write("                </table>\n");
      out.write("                <!--add new product modal-->\n");
      out.write("                <div class=\"dialog overlay\" id=\"addProductModal\">\n");
      out.write("                    <a href=\"#\" class=\"overlay-close\"></a>\n");
      out.write("                    <div class=\"dialog-body\">\n");
      out.write("                        <form action=\"add\" method=\"post\" style=\"width: 368px;\">\n");
      out.write("                            <div class=\"modal-header\">\n");
      out.write("                                <h4 class=\"modal-title\">Add Product</h4>\n");
      out.write("                                <a href=\"#\" type=\"button\" class=\"close\" data-dismiss=\"modal\" aria-hidden=\"true\">&times;</a>\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"\">\n");
      out.write("                                <div class=\"modal-body-pad\">\n");
      out.write("                                    <label>Item Image</label>\n");
      out.write("                                    <input name=\"itemImage\" type=\"text\" class=\"form-control\" required>\n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"modal-body-pad\">\n");
      out.write("                                    <label>Description</label>\n");
      out.write("                                    <textarea name=\"description\" class=\"form-control\" required></textarea>\n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"modal-body-pad\">\n");
      out.write("                                    <label>Contact Description</label>\n");
      out.write("                                    <textarea name=\"contactDescription\"  class=\"form-control\" required></textarea>\n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"modal-body-pad\">\n");
      out.write("                                    <label>Price</label>\n");
      out.write("                                    <input name=\"price\" type=\"text\" class=\"form-control\" required></input>\n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"modal-body-pad\" style=\"margin-top: 44px;\">\n");
      out.write("                                    <label>Sell Status</label>\n");
      out.write("                                    <select name=\"sellStatus\" id=\"\">\n");
      out.write("                                        <option value=\"0\">0 - Sold</option>\n");
      out.write("                                        <option value=\"1\">1 - Available</option>\n");
      out.write("                                    </select>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"modal-footer modal-footer-pad\">\n");
      out.write("                                <input type=\"button\" class=\"btn btn-default\" data-dismiss=\"modal\" value=\"Cancel\">\n");
      out.write("                                <input style=\"background-color: black;\" type=\"submit\" class=\"btn btn-success\" value=\"Add\">\n");
      out.write("                            </div>\n");
      out.write("                        </form>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "Footer.jsp", out, false);
      out.write("\n");
      out.write("            <!-- bootstrap css -->\n");
      out.write("            <link rel=\"stylesheet\" href=\"css/bootstrap.min.css\">\n");
      out.write("            <!-- style css -->\n");
      out.write("            <link rel=\"stylesheet\" href=\"css/style.css\">\n");
      out.write("            <!-- Responsive-->\n");
      out.write("            <link rel=\"stylesheet\" href=\"css/responsive.css\">\n");
      out.write("            <!-- fevicon -->\n");
      out.write("            <link rel=\"icon\" href=\"images/fevicon.png\" type=\"image/gif\" />\n");
      out.write("            <!-- Scrollbar Custom CSS -->\n");
      out.write("            <link rel=\"stylesheet\" href=\"css/jquery.mCustomScrollbar.min.css\">\n");
      out.write("            <!-- Tweaks for older IEs-->\n");
      out.write("            <link rel=\"stylesheet\" href=\"https://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css\">\n");
      out.write("            <!-- owl stylesheets -->\n");
      out.write("            <link rel=\"stylesheet\" href=\"css/owl.carousel.min.css\">\n");
      out.write("            <link rel=\"stylesheet\" href=\"css/owl.theme.default.min.css\">\n");
      out.write("            <link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.css\"\n");
      out.write("                  media=\"screen\">\n");
      out.write("\n");
      out.write("            <script>\n");
      out.write("                $(document).ready(function () {\n");
      out.write("                    $(\".fancybox\").fancybox({\n");
      out.write("                        openEffect: \"none\",\n");
      out.write("                        closeEffect: \"none\"\n");
      out.write("                    });\n");
      out.write("                });\n");
      out.write("\n");
      out.write("\n");
      out.write("                $('#myCarousel').carousel({\n");
      out.write("                    interval: false\n");
      out.write("                });\n");
      out.write("\n");
      out.write("                //scroll slides on swipe for touch enabled devices\n");
      out.write("\n");
      out.write("                $(\"#myCarousel\").on(\"touchstart\", function (event) {\n");
      out.write("\n");
      out.write("                    var yClick = event.originalEvent.touches[0].pageY;\n");
      out.write("                    $(this).one(\"touchmove\", function (event) {\n");
      out.write("\n");
      out.write("                        var yMove = event.originalEvent.touches[0].pageY;\n");
      out.write("                        if (Math.floor(yClick - yMove) > 1) {\n");
      out.write("                            $(\".carousel\").carousel('next');\n");
      out.write("                        } else if (Math.floor(yClick - yMove) < -1) {\n");
      out.write("                            $(\".carousel\").carousel('prev');\n");
      out.write("                        }\n");
      out.write("                    });\n");
      out.write("                    $(\".carousel\").on(\"touchend\", function () {\n");
      out.write("                        $(this).off(\"touchmove\");\n");
      out.write("                    });\n");
      out.write("                });\n");
      out.write("            </script>\n");
      out.write("    </body>\n");
      out.write("\n");
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
