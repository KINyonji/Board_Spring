/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.5.68
<<<<<<< HEAD
 * Generated at: 2021-07-07 00:02:36 UTC
=======
 * Generated at: 2021-07-06 08:35:57 UTC
>>>>>>> parent of 132cf16 (home 검색버튼)
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.WEB_002dINF.views;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.HashMap<java.lang.String,java.lang.Long>(12);
    _jspx_dependants.put("jar:file:/C:/Study/SpringBoardProj/.metadata/.plugins/org.eclipse.wst.server.core/tmp0/wtpwebapps/Board/WEB-INF/lib/jstl-1.2.jar!/META-INF/fmt.tld", Long.valueOf(1153352682000L));
    _jspx_dependants.put("/WEB-INF/lib/spring-webmvc-5.2.15.RELEASE.jar", Long.valueOf(1624507708828L));
    _jspx_dependants.put("/WEB-INF/views/layout/head.jsp", Long.valueOf(1625532438827L));
    _jspx_dependants.put("/WEB-INF/views/layout/header_sidebar.jsp", Long.valueOf(1625529587378L));
    _jspx_dependants.put("jar:file:/C:/Study/SpringBoardProj/.metadata/.plugins/org.eclipse.wst.server.core/tmp0/wtpwebapps/Board/WEB-INF/lib/jstl-1.2.jar!/META-INF/c.tld", Long.valueOf(1153352682000L));
    _jspx_dependants.put("/WEB-INF/views/layout/script.jsp", Long.valueOf(1625535407264L));
    _jspx_dependants.put("jar:file:/C:/Study/SpringBoardProj/.metadata/.plugins/org.eclipse.wst.server.core/tmp0/wtpwebapps/Board/WEB-INF/lib/jstl-1.2.jar!/META-INF/fn.tld", Long.valueOf(1153352682000L));
    _jspx_dependants.put("/WEB-INF/lib/jstl-1.2.jar", Long.valueOf(1624349804097L));
    _jspx_dependants.put("/WEB-INF/views/layout/mobile-nav-toggle.jsp", Long.valueOf(1625445661231L));
    _jspx_dependants.put("/WEB-INF/views/layout/footer.jsp", Long.valueOf(1625445661229L));
    _jspx_dependants.put("jar:file:/C:/Study/SpringBoardProj/.metadata/.plugins/org.eclipse.wst.server.core/tmp0/wtpwebapps/Board/WEB-INF/lib/spring-webmvc-5.2.15.RELEASE.jar!/META-INF/spring-form.tld", Long.valueOf(1620767206000L));
<<<<<<< HEAD
    _jspx_dependants.put("/WEB-INF/views/layout/home.jsp", Long.valueOf(1625615770151L));
=======
    _jspx_dependants.put("/WEB-INF/views/layout/home.jsp", Long.valueOf(1625445661231L));
>>>>>>> parent of 132cf16 (home 검색버튼)
  }

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = null;
  }

  private volatile javax.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
  }

  public javax.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
      throws java.io.IOException, javax.servlet.ServletException {

    final java.lang.String _jspx_method = request.getMethod();
    if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method) && !javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
      response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSP들은 오직 GET, POST 또는 HEAD 메소드만을 허용합니다. Jasper는 OPTIONS 메소드 또한 허용합니다.");
      return;
    }

    final javax.servlet.jsp.PageContext pageContext;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, false, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html lang=\"ko\">\r\n");
      out.write("<head>\r\n");
      out.write("	");
      out.write("\r\n");
      out.write("    \r\n");
      out.write("  <meta charset=\"utf-8\">\r\n");
      out.write("  <meta content=\"width=device-width, initial-scale=1.0\" name=\"viewport\">\r\n");
      out.write("\r\n");
      out.write("<!-- 웹 사이트 이름 -->\r\n");
      out.write("  <title>Y - Spring</title>\r\n");
      out.write("  <meta content=\"\" name=\"description\">\r\n");
      out.write("  <meta content=\"\" name=\"keywords\">\r\n");
      out.write("\r\n");
      out.write("  <!-- Favicons 파비콘 -->\r\n");
      out.write("  <link rel=\"icon\" href=\"/resources/assets/img/favicon.ico\">\r\n");
      out.write("\r\n");
      out.write("  <!-- Google Fonts -->\r\n");
      out.write("  <link href=\"https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i\" rel=\"stylesheet\">\r\n");
      out.write("\r\n");
      out.write("  <!-- Vendor CSS Files -->\r\n");
      out.write("  <link href=\"/resources/assets/vendor/bootstrap/css/bootstrap.min.css\" rel=\"stylesheet\">\r\n");
      out.write("  <link href=\"/resources/assets/vendor/icofont/icofont.min.css\" rel=\"stylesheet\">\r\n");
      out.write("  <link href=\"/resources/assets/vendor/boxicons/css/boxicons.min.css\" rel=\"stylesheet\">\r\n");
      out.write("  <link href=\"/resources/assets/vendor/venobox/venobox.css\" rel=\"stylesheet\">\r\n");
      out.write("  <link href=\"/resources/assets/vendor/owl.carousel/assets/owl.carousel.min.css\" rel=\"stylesheet\">\r\n");
      out.write("  <link href=\"/resources/assets/vendor/aos/aos.css\" rel=\"stylesheet\">\r\n");
      out.write("\r\n");
      out.write("  <!-- Template Main CSS File -->\r\n");
      out.write("  <link href=\"/resources/assets/css/style.css\" rel=\"stylesheet\">\r\n");
      out.write("\r\n");
      out.write("  <!-- =======================================================\r\n");
      out.write("  * Template Name: MyResume - v2.2.1\r\n");
      out.write("  * Template URL: https://bootstrapmade.com/free-html-bootstrap-template-my-resume/\r\n");
      out.write("  * Author: BootstrapMade.com\r\n");
      out.write("  * License: https://bootstrapmade.com/license/\r\n");
      out.write("  ======================================================== -->\r\n");
      out.write("  \r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("\r\n");
      out.write("	<!-- ======= Mobile nav toggle button ======= -->\r\n");
      out.write("	");
      out.write("\r\n");
      out.write("    \r\n");
      out.write("    <!-- ======= Mobile nav toggle button ======= -->\r\n");
      out.write("  <button type=\"button\" class=\"mobile-nav-toggle d-xl-none\"><i class=\"icofont-navigation-menu\"></i></button>");
      out.write("\r\n");
      out.write("\r\n");
      out.write("	<!-- ======= Header ======= 왼쪽 정렬해 놓은 메뉴들 -->\r\n");
      out.write("	");
      out.write("\r\n");
      out.write("<!-- ======= Header ======= 왼쪽 정렬해 놓은 메뉴들 -->\r\n");
      out.write("  <header id=\"header\" class=\"d-flex flex-column justify-content-center\">\r\n");
      out.write(" <nav class=\"nav-menu\">\r\n");
      out.write("      <ul class=\"navUl\">\r\n");
      out.write("      	<!-- class=\"active\"을 통해 메뉴를 눌렀을때 해당 구간으로 이동 + 색 변화 -->\r\n");
      out.write("        <li class=\"active nav-home\"><a href=\"");
      out.print(request.getContextPath());
      out.write("/index\"><i class=\"bx bx-home\"></i> <span>Home</span></a></li>\r\n");
      out.write("        <li class=\"nav-board\"><a href=\"");
      out.print(request.getContextPath());
      out.write("/board/list\"><i class=\"bx bx-conversation\"></i> <span>QnA</span></a></li>\r\n");
      out.write("        <li class=\"nav-user\"><a href=\"#user\"><i class=\"bx bx-user\"></i> <span>User</span></a></li>\r\n");
      out.write("      </ul>\r\n");
      out.write("    </nav><!-- .nav-menu -->\r\n");
      out.write("\r\n");
      out.write("  </header><!-- End Header -->");
      out.write("\r\n");
      out.write("\r\n");
      out.write("	<!-- ======= home Section ======= -->\r\n");
      out.write("	");
      out.write("\r\n");
      out.write("<!-- ======= home Section ======= -->\r\n");
      out.write("  <section id=\"home\" class=\"\">\r\n");
      out.write("  	 <!-- ======= 메인 로고 ======= -->\r\n");
      out.write("	  <div style=\"height: 40vh\">\r\n");
      out.write("	    <div class=\"row-vh d-flex flex-column\">\r\n");
      out.write("		    <div class=\"container mt-5 pt-5\" data-aos=\"zoom-in\" data-aos-delay=\"100\">\r\n");
      out.write("		      <h1>YJ's Spring</h1>\r\n");
      out.write("		      <p>I'm <span class=\"typed\" data-typed-items=\"Developer, Person, Servant\"></span></p>\r\n");
      out.write("		    </div>\r\n");
      out.write("	    </div>\r\n");
      out.write("	  </div>\r\n");
      out.write("	   <!-- ======= 검색하기 ======= -->\r\n");
      out.write("	   <div style=\"height: 50vh\">\r\n");
      out.write("		   <div class=\"row-vh d-flex flex-column\">\r\n");
      out.write("			   	<div class=\"container\" data-aos=\"zoom-in\" data-aos-delay=\"200\">\r\n");
      out.write("			     <div class=\"subscribe\">\r\n");
<<<<<<< HEAD
      out.write("			         <form action=\"board/list\" method=\"Get\" role=\"form\" >\r\n");
      out.write("			          <div class=\"subscribe-form\">\r\n");
      out.write("			            <input type=\"text\" name=\"keyword\" id=\"keyword\"><input type=\"submit\" value=\"Search\">\r\n");
=======
      out.write("			        <form action=\"forms/notify.php\" method=\"Get\" role=\"form\" class=\"	\">\r\n");
      out.write("			          <div class=\"subscribe-form\">\r\n");
      out.write("			            <input type=\"text\" name=\"search-bar\"><input type=\"submit\" value=\"Subscribe\">\r\n");
>>>>>>> parent of 132cf16 (home 검색버튼)
      out.write("			          </div>\r\n");
      out.write("			        </form>\r\n");
      out.write("			      </div>\r\n");
      out.write("			    </div>\r\n");
      out.write("		   </div>\r\n");
      out.write("	   </div> \r\n");
      out.write("  </section><!-- End home -->\r\n");
      out.write("  \r\n");
      out.write("  <!-- 오른쪽하단에 ↑ 화살표-->\r\n");
      out.write("  <a href=\"#\" class=\"back-to-top\"><i class=\"bx bx-up-arrow-alt\"></i></a>\r\n");
      out.write("  \r\n");
      out.write("  <!-- 페이징 로딩 -->\r\n");
      out.write("  <div id=\"preloader\"></div>");
      out.write("\r\n");
      out.write("\r\n");
      out.write("	<!-- ======= content Section ======= -->\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("	<!-- ======= Footer ======= -->\r\n");
      out.write("	");
      out.write("\r\n");
      out.write("<!-- ======= Footer ======= -->\r\n");
      out.write("  <footer id=\"footer\">\r\n");
      out.write("    <div class=\"container\">\r\n");
      out.write("      <h3>Spring is coming</h3>\r\n");
      out.write("      <p>No winter lasts forever. No spring skips its turn.</p>\r\n");
      out.write("      <div class=\"social-links\">\r\n");
      out.write("        <a href=\"#\" class=\"twitter\"><i class=\"bx bxl-twitter\"></i></a>\r\n");
      out.write("        <a href=\"#\" class=\"facebook\"><i class=\"bx bxl-facebook\"></i></a>\r\n");
      out.write("        <a href=\"#\" class=\"instagram\"><i class=\"bx bxl-instagram\"></i></a>\r\n");
      out.write("        <a href=\"#\" class=\"google-plus\"><i class=\"bx bxl-skype\"></i></a>\r\n");
      out.write("        <a href=\"#\" class=\"linkedin\"><i class=\"bx bxl-linkedin\"></i></a>\r\n");
      out.write("      </div>\r\n");
      out.write("      <div class=\"copyright\">\r\n");
      out.write("        &copy; Copyright <strong><span>MyResume</span></strong>. All Rights Reserved\r\n");
      out.write("      </div>\r\n");
      out.write("      <div class=\"credits\">\r\n");
      out.write("        <!-- All the links in the footer should remain intact. -->\r\n");
      out.write("        <!-- You can delete the links only if you purchased the pro version. -->\r\n");
      out.write("        <!-- Licensing information: [license-url] -->\r\n");
      out.write("        <!-- Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/free-html-bootstrap-template-my-resume/ -->\r\n");
      out.write("        Designed by <a href=\"https://github.com/KINyonji\">Kimyonji</a>\r\n");
      out.write("      </div>\r\n");
      out.write("    </div>\r\n");
      out.write("  </footer><!-- End Footer -->");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("	<!-- Vendor JS Files -->\r\n");
      out.write("	");
      out.write("\r\n");
      out.write("<!-- Vendor JS Files -->\r\n");
      out.write("  <script src=\"/resources/assets/vendor/jquery/jquery.min.js\"></script>\r\n");
      out.write("  <script src=\"/resources/assets/vendor/bootstrap/js/bootstrap.bundle.min.js\"></script>\r\n");
      out.write("  <script src=\"/resources/assets/vendor/jquery.easing/jquery.easing.min.js\"></script>\r\n");
      out.write("  <script src=\"/resources/assets/vendor/php-email-form/validate.js\"></script>\r\n");
      out.write("  <script src=\"/resources/assets/vendor/waypoints/jquery.waypoints.min.js\"></script>\r\n");
      out.write("  <script src=\"/resources/assets/vendor/counterup/counterup.min.js\"></script>\r\n");
      out.write("  <script src=\"/resources/assets/vendor/isotope-layout/isotope.pkgd.min.js\"></script>\r\n");
      out.write("  <script src=\"/resources/assets/vendor/venobox/venobox.min.js\"></script>\r\n");
      out.write("  <script src=\"/resources/assets/vendor/owl.carousel/owl.carousel.min.js\"></script>\r\n");
      out.write("  <script src=\"/resources/assets/vendor/typed.js/typed.min.js\"></script>\r\n");
      out.write("  <script src=\"/resources/assets/vendor/aos/aos.js\"></script>\r\n");
      out.write("\r\n");
      out.write("  <!-- Template Main JS File -->\r\n");
      out.write("  <script src=\"/resources/assets/js/main.js\"></script>\r\n");
      out.write("  \r\n");
      out.write("\r\n");
      out.write("    <!-- DataTable -->\r\n");
      out.write("	<link rel=\"stylesheet\" href=\"https://cdn.datatables.net/t/bs-3.3.6/jqc-1.12.0,dt-1.10.11/datatables.min.css\" />\r\n");
      out.write("	<script  src=\"https://cdn.datatables.net/t/bs-3.3.6/jqc-1.12.0,dt-1.10.11/datatables.min.js\"></script>\r\n");
      out.write("	\r\n");
      out.write("  	<!--  jquery validate --> \r\n");
      out.write(" 	<script type=\"text/javascript\" src=\"https://cdn.jsdelivr.net/jquery.validation/1.16.0/jquery.validate.min.js\"></script>\r\n");
      out.write("\r\n");
      out.write("     \r\n");
      out.write("\r\n");
      out.write("	");
      out.write("\r\n");
      out.write("\r\n");
      out.write("</body>\r\n");
      out.write("\r\n");
      out.write("</html>\r\n");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
