/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.5.68
 * Generated at: 2021-07-02 00:29:27 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.WEB_002dINF.views.board;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class boardUpdate_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

private static org.apache.jasper.runtime.ProtectedFunctionMapper _jspx_fnmap_0;

static {
  _jspx_fnmap_0= org.apache.jasper.runtime.ProtectedFunctionMapper.getMapForFunction("fn:length", org.apache.taglibs.standard.functions.Functions.class, "length", new Class[] {java.lang.Object.class});
}

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.HashMap<java.lang.String,java.lang.Long>(11);
    _jspx_dependants.put("jar:file:/C:/Study/SpringBoardProj/.metadata/.plugins/org.eclipse.wst.server.core/tmp0/wtpwebapps/Board/WEB-INF/lib/jstl-1.2.jar!/META-INF/fmt.tld", Long.valueOf(1153352682000L));
    _jspx_dependants.put("/WEB-INF/lib/spring-webmvc-5.2.15.RELEASE.jar", Long.valueOf(1624507708828L));
    _jspx_dependants.put("/WEB-INF/views/layout/head.jsp", Long.valueOf(1624863257151L));
    _jspx_dependants.put("/WEB-INF/views/layout/header_sidebar.jsp", Long.valueOf(1625011322158L));
    _jspx_dependants.put("jar:file:/C:/Study/SpringBoardProj/.metadata/.plugins/org.eclipse.wst.server.core/tmp0/wtpwebapps/Board/WEB-INF/lib/jstl-1.2.jar!/META-INF/c.tld", Long.valueOf(1153352682000L));
    _jspx_dependants.put("/WEB-INF/views/layout/script.jsp", Long.valueOf(1624927601740L));
    _jspx_dependants.put("jar:file:/C:/Study/SpringBoardProj/.metadata/.plugins/org.eclipse.wst.server.core/tmp0/wtpwebapps/Board/WEB-INF/lib/jstl-1.2.jar!/META-INF/fn.tld", Long.valueOf(1153352682000L));
    _jspx_dependants.put("/WEB-INF/lib/jstl-1.2.jar", Long.valueOf(1624349804097L));
    _jspx_dependants.put("/WEB-INF/views/layout/mobile-nav-toggle.jsp", Long.valueOf(1624926975028L));
    _jspx_dependants.put("/WEB-INF/views/layout/footer.jsp", Long.valueOf(1624927765983L));
    _jspx_dependants.put("jar:file:/C:/Study/SpringBoardProj/.metadata/.plugins/org.eclipse.wst.server.core/tmp0/wtpwebapps/Board/WEB-INF/lib/spring-webmvc-5.2.15.RELEASE.jar!/META-INF/spring-form.tld", Long.valueOf(1620767206000L));
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

  private org.apache.jasper.runtime.TagHandlerPool _005fjspx_005ftagPool_005fc_005fchoose;
  private org.apache.jasper.runtime.TagHandlerPool _005fjspx_005ftagPool_005fc_005fwhen_0026_005ftest;
  private org.apache.jasper.runtime.TagHandlerPool _005fjspx_005ftagPool_005fc_005fotherwise;

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
    _005fjspx_005ftagPool_005fc_005fchoose = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
    _005fjspx_005ftagPool_005fc_005fwhen_0026_005ftest = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
    _005fjspx_005ftagPool_005fc_005fotherwise = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
  }

  public void _jspDestroy() {
    _005fjspx_005ftagPool_005fc_005fchoose.release();
    _005fjspx_005ftagPool_005fc_005fwhen_0026_005ftest.release();
    _005fjspx_005ftagPool_005fc_005fotherwise.release();
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
      out.write(" \r\n");
      //  c:choose
      org.apache.taglibs.standard.tag.common.core.ChooseTag _jspx_th_c_005fchoose_005f0 = (org.apache.taglibs.standard.tag.common.core.ChooseTag) _005fjspx_005ftagPool_005fc_005fchoose.get(org.apache.taglibs.standard.tag.common.core.ChooseTag.class);
      boolean _jspx_th_c_005fchoose_005f0_reused = false;
      try {
        _jspx_th_c_005fchoose_005f0.setPageContext(_jspx_page_context);
        _jspx_th_c_005fchoose_005f0.setParent(null);
        int _jspx_eval_c_005fchoose_005f0 = _jspx_th_c_005fchoose_005f0.doStartTag();
        if (_jspx_eval_c_005fchoose_005f0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
          do {
            out.write('\r');
            out.write('\n');
            out.write('	');
            if (_jspx_meth_c_005fwhen_005f0(_jspx_th_c_005fchoose_005f0, _jspx_page_context))
              return;
            out.write("\r\n");
            out.write("	\r\n");
            out.write("	");
            //  c:otherwise
            org.apache.taglibs.standard.tag.common.core.OtherwiseTag _jspx_th_c_005fotherwise_005f0 = (org.apache.taglibs.standard.tag.common.core.OtherwiseTag) _005fjspx_005ftagPool_005fc_005fotherwise.get(org.apache.taglibs.standard.tag.common.core.OtherwiseTag.class);
            boolean _jspx_th_c_005fotherwise_005f0_reused = false;
            try {
              _jspx_th_c_005fotherwise_005f0.setPageContext(_jspx_page_context);
              _jspx_th_c_005fotherwise_005f0.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_005fchoose_005f0);
              int _jspx_eval_c_005fotherwise_005f0 = _jspx_th_c_005fotherwise_005f0.doStartTag();
              if (_jspx_eval_c_005fotherwise_005f0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
                do {
                  out.write("\r\n");
                  out.write("\r\n");
                  out.write("<!DOCTYPE html>\r\n");
                  out.write("<html lang=\"kr\">\r\n");
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
                  out.write("\r\n");
                  out.write("	\r\n");
                  out.write("	<!-- 네이버 스마트 에디터 smarteditor2 -->\r\n");
                  out.write("	<script type=\"text/javascript\" src=\"/resources/board/se2/js/service/HuskyEZCreator.js\" charset=\"utf-8\"></script>\r\n");
                  out.write("	\r\n");
                  out.write("</head>\r\n");
                  out.write("\r\n");
                  out.write("<body>\r\n");
                  out.write("\r\n");
                  out.write("  <!-- ======= Mobile nav toggle button ======= -->\r\n");
                  out.write("  ");
                  out.write("\r\n");
                  out.write("    \r\n");
                  out.write("    <!-- ======= Mobile nav toggle button ======= -->\r\n");
                  out.write("  <button type=\"button\" class=\"mobile-nav-toggle d-xl-none\"><i class=\"icofont-navigation-menu\"></i></button>");
                  out.write("\r\n");
                  out.write(" \r\n");
                  out.write("  <!-- ======= Header ======= 왼쪽 정렬해 놓은 메뉴들 -->\r\n");
                  out.write("  ");
                  out.write("\r\n");
                  out.write("<!-- ======= Header ======= 왼쪽 정렬해 놓은 메뉴들 -->\r\n");
                  out.write("  <header id=\"header\" class=\"d-flex flex-column justify-content-center\">\r\n");
                  out.write(" <nav class=\"nav-menu\">\r\n");
                  out.write("      <ul>\r\n");
                  out.write("      	<!-- class=\"active\"을 통해 메뉴를 눌렀을때 해당 구간으로 이동 + 색 변화 -->\r\n");
                  out.write("        <li class=\"active\"><a href=\"");
                  out.print(request.getContextPath());
                  out.write("/index\"><i class=\"bx bx-home\"></i> <span>Home</span></a></li>\r\n");
                  out.write("        <li><a href=\"");
                  out.print(request.getContextPath());
                  out.write("/board/list\"><i class=\"bx bx-conversation\"></i> <span>QnA</span></a></li>\r\n");
                  out.write("        <li><a href=\"#user\"><i class=\"bx bx-user\"></i> <span>User</span></a></li>\r\n");
                  out.write("      </ul>\r\n");
                  out.write("    </nav><!-- .nav-menu -->\r\n");
                  out.write("\r\n");
                  out.write("  </header><!-- End Header -->");
                  out.write("\r\n");
                  out.write("\r\n");
                  out.write("  <!-- ======= content Section ======= -->\r\n");
                  out.write("	<main id=\"main\">\r\n");
                  out.write("		<div id=\"content\">\r\n");
                  out.write("			<div id=\"QnA\" class=\"QnA\">\r\n");
                  out.write("				<div class=\"container\" data-aos=\"fade-up\">\r\n");
                  out.write("					<div class=\"content-title\">\r\n");
                  out.write("						<h2>Tech</h2>\r\n");
                  out.write("					</div>\r\n");
                  out.write("					<!-- 글작성 card -->\r\n");
                  out.write("					<div class=\"card\">\r\n");
                  out.write("						<div class=\"card-header\">\r\n");
                  out.write("							<div style=\"float: left\">\r\n");
                  out.write("								<h5 class=\"card-title mb-0\">WRITE</h5>\r\n");
                  out.write("							</div>\r\n");
                  out.write("							<div style=\"float: right\">\r\n");
                  out.write("								<button type=\"button\" onclick=\"historyBack()\">←</button>\r\n");
                  out.write("							</div>\r\n");
                  out.write("						</div>\r\n");
                  out.write("						<div class=\"card-body\">\r\n");
                  out.write("							<form name=\"frm\" action=\"updateOk\" method=\"post\" onsubmit=\"\">\r\n");
                  out.write("								<div class=\"row\">\r\n");
                  out.write("									<div class=\"col-md-12\">\r\n");
                  out.write("										<!-- 글제목 -->\r\n");
                  out.write("										<div class=\"mb-3\">\r\n");
                  out.write("											<label class=\"form-label\" for=\"inputTitle\">제목</label>\r\n");
                  out.write("											<input type=\"text\" name=\"b_title\" class=\"form-control\" id=\"inputTitle\"\r\n");
                  out.write("												placeholder=\"제목\" value=\"");
                  out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${list[0].b_title}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
                  out.write("\">\r\n");
                  out.write("										</div>\r\n");
                  out.write("										<!-- 작성자 -->\r\n");
                  out.write("										<div class=\"mb-3\">\r\n");
                  out.write("											<label class=\"form-label\" for=\"inputrRegname\">작성자</label>\r\n");
                  out.write("											<input type=\"text\" name=\"u_modifyname\" class=\"form-control\" id=\"inputrRegname\"\r\n");
                  out.write("												placeholder=\"작성자\" value=\"");
                  out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${list[0].u_regname}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
                  out.write("\">\r\n");
                  out.write("										</div>\r\n");
                  out.write("										<!-- 글내용 -->\r\n");
                  out.write("										<div class=\"mb-3\">\r\n");
                  out.write("											<label class=\"form-label\" for=\"inputContent\">내용</label>\r\n");
                  out.write("											\r\n");
                  out.write("											<!-- 네이버 스마트 에디터 smarteditor2 -->	\r\n");
                  out.write("											<textarea name=\"b_content\" id=\"ir1\" rows=\"10\" cols=\"100\" style=\"width:100%; min-width:260px; display:none;\" >");
                  out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${list[0].b_content}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
                  out.write("</textarea>\r\n");
                  out.write("											\r\n");
                  out.write("										</div>\r\n");
                  out.write("									</div>\r\n");
                  out.write("								</div>\r\n");
                  out.write("								<input type=\"hidden\" name=\"b_id\" value=\"");
                  out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${list[0].b_id}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
                  out.write("\">\r\n");
                  out.write("								<button type=\"submit\" class=\"btn btn-primary\" onclick=\"submitContents()\">수정하기</button>\r\n");
                  out.write("							</form>\r\n");
                  out.write("						</div>\r\n");
                  out.write("					</div>\r\n");
                  out.write("\r\n");
                  out.write("				</div>\r\n");
                  out.write("\r\n");
                  out.write("			</div>\r\n");
                  out.write("			</div>\r\n");
                  out.write("		</div>\r\n");
                  out.write("	</main>\r\n");
                  out.write("  <!-- ======= Footer ======= -->\r\n");
                  out.write("  ");
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
                  out.write("  \r\n");
                  out.write("\r\n");
                  out.write("  <!-- Vendor JS Files -->\r\n");
                  out.write("  ");
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
                  out.write("  <script src=\"/resources/assets/js/main.js\"></script>");
                  out.write("\r\n");
                  out.write("\r\n");
                  out.write("	<!-- 네이버 스마트 에디터 smarteditor2 -->\r\n");
                  out.write("	<script type=\"text/javascript\">\r\n");
                  out.write("		var oEditors = [];\r\n");
                  out.write("\r\n");
                  out.write("		var sLang = \"ko_KR\"; // 언어 (ko_KR/ en_US/ ja_JP/ zh_CN/ zh_TW), default = ko_KR\r\n");
                  out.write("\r\n");
                  out.write("		// 추가 글꼴 목록\r\n");
                  out.write("		//var aAdditionalFontSet = [[\"MS UI Gothic\", \"MS UI Gothic\"], [\"Comic Sans MS\", \"Comic Sans MS\"],[\"TEST\",\"TEST\"]];\r\n");
                  out.write("\r\n");
                  out.write("		nhn.husky.EZCreator.createInIFrame({\r\n");
                  out.write("			oAppRef : oEditors,\r\n");
                  out.write("			elPlaceHolder : \"ir1\",\r\n");
                  out.write("			sSkinURI : \"/resources/board/se2/SmartEditor2Skin.html\",\r\n");
                  out.write("			htParams : {\r\n");
                  out.write("				bUseToolbar : true, // 툴바 사용 여부 (true:사용/ false:사용하지 않음)\r\n");
                  out.write("				bUseVerticalResizer : true, // 입력창 크기 조절바 사용 여부 (true:사용/ false:사용하지 않음)\r\n");
                  out.write("				bUseModeChanger : true, // 모드 탭(Editor | HTML | TEXT) 사용 여부 (true:사용/ false:사용하지 않음)\r\n");
                  out.write("				//bSkipXssFilter : true,		// client-side xss filter 무시 여부 (true:사용하지 않음 / 그외:사용)\r\n");
                  out.write("				//aAdditionalFontList : aAdditionalFontSet,		// 추가 글꼴 목록\r\n");
                  out.write("				fOnBeforeUnload : function() {\r\n");
                  out.write("					//alert(\"완료!\");\r\n");
                  out.write("				},\r\n");
                  out.write("				I18N_LOCALE : sLang\r\n");
                  out.write("			}, //boolean\r\n");
                  out.write("			fOnAppLoad : function() {\r\n");
                  out.write("				//예제 코드\r\n");
                  out.write("				//oEditors.getById[\"ir1\"].exec(\"PASTE_HTML\", [\"로딩이 완료된 후에 본문에 삽입되는 text입니다.\"]);\r\n");
                  out.write("			},\r\n");
                  out.write("			fCreator : \"createSEditor2\"\r\n");
                  out.write("		});\r\n");
                  out.write("\r\n");
                  out.write("		function pasteHTML() {\r\n");
                  out.write("			var sHTML = \"<span style='color:#FF0000;'>이미지도 같은 방식으로 삽입합니다.<\\/span>\";\r\n");
                  out.write("			oEditors.getById[\"ir1\"].exec(\"PASTE_HTML\", [ sHTML ]);\r\n");
                  out.write("		}\r\n");
                  out.write("\r\n");
                  out.write("		function showHTML() {\r\n");
                  out.write("			var sHTML = oEditors.getById[\"ir1\"].getIR();\r\n");
                  out.write("			alert(sHTML);\r\n");
                  out.write("		}\r\n");
                  out.write("\r\n");
                  out.write("		function submitContents(elClickedObj) {\r\n");
                  out.write("			oEditors.getById[\"ir1\"].exec(\"UPDATE_CONTENTS_FIELD\", []); // 에디터의 내용이 textarea에 적용됩니다.\r\n");
                  out.write("	/* 		document.getElementById(\"ir1\").submit(); */\r\n");
                  out.write("			// 에디터의 내용에 대한 값 검증은 이곳에서 document.getElementById(\"ir1\").value를 이용해서 처리하면 됩니다.\r\n");
                  out.write("\r\n");
                  out.write("			try {\r\n");
                  out.write("				elClickedObj.form.submit();\r\n");
                  out.write("			} catch (e) {\r\n");
                  out.write("			}\r\n");
                  out.write("		}\r\n");
                  out.write("\r\n");
                  out.write("		function setDefaultFont() {\r\n");
                  out.write("			var sDefaultFont = '궁서';\r\n");
                  out.write("			var nFontSize = 24;\r\n");
                  out.write("			oEditors.getById[\"ir1\"].setDefaultFont(sDefaultFont, nFontSize);\r\n");
                  out.write("		}\r\n");
                  out.write("		\r\n");
                  out.write("		 function historyBack() {\r\n");
                  out.write("			 history.back();\r\n");
                  out.write("		} \r\n");
                  out.write("	</script>\r\n");
                  out.write("\r\n");
                  out.write("\r\n");
                  out.write("</body>\r\n");
                  out.write("\r\n");
                  out.write("</html>\r\n");
                  out.write("\r\n");
                  out.write("\r\n");
                  out.write("	");
                  int evalDoAfterBody = _jspx_th_c_005fotherwise_005f0.doAfterBody();
                  if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
                    break;
                } while (true);
              }
              if (_jspx_th_c_005fotherwise_005f0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
                return;
              }
              _005fjspx_005ftagPool_005fc_005fotherwise.reuse(_jspx_th_c_005fotherwise_005f0);
              _jspx_th_c_005fotherwise_005f0_reused = true;
            } finally {
              org.apache.jasper.runtime.JspRuntimeLibrary.releaseTag(_jspx_th_c_005fotherwise_005f0, _jsp_getInstanceManager(), _jspx_th_c_005fotherwise_005f0_reused);
            }
            out.write('\r');
            out.write('\n');
            int evalDoAfterBody = _jspx_th_c_005fchoose_005f0.doAfterBody();
            if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
              break;
          } while (true);
        }
        if (_jspx_th_c_005fchoose_005f0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
          return;
        }
        _005fjspx_005ftagPool_005fc_005fchoose.reuse(_jspx_th_c_005fchoose_005f0);
        _jspx_th_c_005fchoose_005f0_reused = true;
      } finally {
        org.apache.jasper.runtime.JspRuntimeLibrary.releaseTag(_jspx_th_c_005fchoose_005f0, _jsp_getInstanceManager(), _jspx_th_c_005fchoose_005f0_reused);
      }
      out.write('\r');
      out.write('\n');
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

  private boolean _jspx_meth_c_005fwhen_005f0(javax.servlet.jsp.tagext.JspTag _jspx_th_c_005fchoose_005f0, javax.servlet.jsp.PageContext _jspx_page_context)
          throws java.lang.Throwable {
    javax.servlet.jsp.PageContext pageContext = _jspx_page_context;
    javax.servlet.jsp.JspWriter out = _jspx_page_context.getOut();
    //  c:when
    org.apache.taglibs.standard.tag.rt.core.WhenTag _jspx_th_c_005fwhen_005f0 = (org.apache.taglibs.standard.tag.rt.core.WhenTag) _005fjspx_005ftagPool_005fc_005fwhen_0026_005ftest.get(org.apache.taglibs.standard.tag.rt.core.WhenTag.class);
    boolean _jspx_th_c_005fwhen_005f0_reused = false;
    try {
      _jspx_th_c_005fwhen_005f0.setPageContext(_jspx_page_context);
      _jspx_th_c_005fwhen_005f0.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_005fchoose_005f0);
      // /WEB-INF/views/board/boardUpdate.jsp(10,1) name = test type = boolean reqTime = true required = true fragment = false deferredValue = false expectedTypeName = null deferredMethod = false methodSignature = null
      _jspx_th_c_005fwhen_005f0.setTest(((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${empty list || fn:length(list) == 0 }", boolean.class, (javax.servlet.jsp.PageContext)_jspx_page_context, _jspx_fnmap_0)).booleanValue());
      int _jspx_eval_c_005fwhen_005f0 = _jspx_th_c_005fwhen_005f0.doStartTag();
      if (_jspx_eval_c_005fwhen_005f0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
        do {
          out.write("\r\n");
          out.write("		<script>\r\n");
          out.write("			alert(\"해당 정보가 삭제되거나 없습니다\");\r\n");
          out.write("			history.back();\r\n");
          out.write("		</script>\r\n");
          out.write("	");
          int evalDoAfterBody = _jspx_th_c_005fwhen_005f0.doAfterBody();
          if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
            break;
        } while (true);
      }
      if (_jspx_th_c_005fwhen_005f0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
      _005fjspx_005ftagPool_005fc_005fwhen_0026_005ftest.reuse(_jspx_th_c_005fwhen_005f0);
      _jspx_th_c_005fwhen_005f0_reused = true;
    } finally {
      org.apache.jasper.runtime.JspRuntimeLibrary.releaseTag(_jspx_th_c_005fwhen_005f0, _jsp_getInstanceManager(), _jspx_th_c_005fwhen_005f0_reused);
    }
    return false;
  }
}
