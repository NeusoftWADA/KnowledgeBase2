<%--
  Created by IntelliJ IDEA.
  User: 齑粉玥
  Date: 2021/2/5
  Time: 16:13
  To change this template use File | Settings | File Templates.
--%>
<%String path = request.getContextPath();
  String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";%>
<base href="<%=basePath%>">

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%--判断第几次跳转到此页面
第一次flag为-1，否则为0
--%>
<c:set scope="page" var="flag" value="0"></c:set>
<c:if test="${requestScope.result eq null}">
    <c:set scope="page" var="flag" value="-1"></c:set>
</c:if>


<html>
<head>
    <title>知识点录入页</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta http-equiv="content-type" content="text/html; charset=utf-8"/>
    <meta name="apple-mobile-web-app-capable" content="yes"/>
    <meta charset="utf-8">
    <link href="resources/css/jquery-ui-themes.css" type="text/css" rel="stylesheet"/>
    <link href="resources/css/axure_rp_page.css" type="text/css" rel="stylesheet"/>
    <link href="data/styles.css" type="text/css" rel="stylesheet"/>
    <link href="files/知识点修改页/styles.css" type="text/css" rel="stylesheet"/>
    <script type="text/javascript" src="https://cdn.bootcdn.net/ajax/libs/jquery/3.5.1/jquery.js"></script>
    <script charset="utf-8" src="kindeditor/kindeditor-all-min.js"></script>
    <script charset="utf-8" src="kindeditor/lang/zh-CN.js"></script>
    <script type="text/javascript">
        var editor;
        KindEditor.ready(function (K) {
            editor = K.create('textarea[name="content"]', {
                resizeType: 1,
                uploadJson: '/wenjiqiwu/upload.do',// 上传图片接口  项目名（此处项目名是wenjiqiwu）+上传图片的路径
                filePostName: 'imgFile',// name属性默认值
                allowPreviewEmoticons: false
            });
        });

        function save() {
            //取得HTML内容?
            //同步数据后可以直接取得textarea的value?
            editor.sync();
            html = document.getElementById('addeditor_id').value; //原生API
            $("#schtmlnr").val(html); //把KindEditor产生的html代码放到schtmlnr里面，用于提交
            return true;
        }
    </script>
</head>
<body>
<jsp:include page="Navigation.jsp"></jsp:include>
<div id="base" class="">
  <jsp:include page="Navigation.jsp"></jsp:include>
    <!-- 边框 (图片) -->
    <div id="u167" class="ax_default image" data-label="边框">
        <img id="u167_img" class="img " src="images/知识点录入页/边框_u167.png"/>
    </div>


    <!-- 取消按钮 (图片) -->
    <div id="u178" class="ax_default _图片" data-label="取消按钮">
        <img id="u178_img" class="img " src="images/知识点录入页/取消按钮_u178.png"/>
    </div>

    <!-- 分类图标 (图片) -->
    <div id="u179" class="ax_default _图片" data-label="分类图标">
        <img id="u179_img" class="img " src="images/个人页/分类按钮_u115.png"/>
    </div>


    <form action="/myweb/knowledge/input" method="post">
        <!-- 标题输入 (文本框) -->
        <div id="u182" class="ax_default text_field" data-label="标题输入">
            <input id="u182_input" type="text" name="title" value="请输入标题…"/>
        </div>

        <!-- 内容输入 (多行文本框) -->
        <div onsubmit="return save();" style="margin-left: 540px;margin-top: 217px;height: 263px;width: 461px;">
            <div>
                <textarea id="u181" class="ax_default text_area" data-label="内容输入" name="content"
                          style="width:100%;height:600px;border: 0 none;visibility:hidden;"></textarea>
                <textarea id="u181_input" rows="" cols="" name="content" id="schtmlnr"
                          style="display:none;">请输入内容…</textarea>
            </div>
        </div>

        <!-- 分类选择 (下拉列表框) -->
        <div id="u180" class="ax_default droplist" data-label="分类选择" title="请选择分类">
            <select id="u180_input" title="请选择分类" name="selectType">
                <option value="—请选择类别—">—请选择类别—</option>
                <option value="计算机类">计算机类</option>
                <option value="高数">高数</option>
                <option value="英语">英语</option>
                <option value="物理">物理</option>
            </select>
        </div>

        <!-- 确定按钮 (图片) -->
        <div id="u177" class="ax_default _图片" data-label="确定按钮">
            <input   id="u177_img"  class="img "  src="images/主页/u57.png" type="image" align=absMiddle border=0 name=Redlmg onlick="this.form.submit"/>
        </div>
    </form>


    <c:if test="${pageScope.flag eq 0}">
        <c:if test="${requestScope.result eq -1}">
            <!-- 错误提示 (矩形) -->
            <div id="u184" class="ax_default label" data-label="错误提示"style="top: 193px;">
                <div id="u184_div" class=""></div>
                <div id="u184_text" class="text ">
                    <p><span>*请核对标题是否填写</span></p>
                </div>
            </div>

        </c:if>

        <c:if test="${requestScope.result eq -2}">
            <!-- 错误提示 (矩形) -->
            <div id="u183" class="ax_default label" data-label="错误提示" style="top: 825px;">
                <div id="u183_div" class=""></div>
                <div id="u183_text" class="text ">
                    <p><span>*内容不得为空</span></p>
                </div>
            </div>
        </c:if>

        <c:if test="${requestScope.result eq -3}">
            <!-- 错误提示 (矩形) -->
            <div id="u185" class="ax_default label" data-label="错误提示" style="top: 885px;">
                <div id="u185_div" class=""></div>
                <div id="u185_text" class="text ">
                    <p><span>*请选择类别哦</span></p>
                </div>
            </div>
        </c:if>

        <c:if test="${requestScope.result eq 1}">
            <!-- 录入成功 (组 合) -->
            <div id="u186" class="ax_default" data-label="录入成功" data-left="-332" data-top="0" data-width="2722"
                 data-height="1426">

                <!-- 遮蔽2 (矩形) -->
                <div id="u187" class="ax_default box_3" data-label="遮蔽2">
                    <div id="u187_div" class=""></div>
                </div>

                <!-- Unnamed (矩形) -->
                <div id="u188" class="ax_default box_3">
                    <div id="u188_div" class=""></div>
                    <div id="u188_text" class="text ">
                        <p><span> 已成功录入&nbsp; &nbsp;&nbsp; </span></p>
                        <p><span><a href="/myweb/show/knowledge">请点击返回&nbsp; &nbsp;&nbsp; </a></span></p>
                    </div>
                </div>

                <!-- Unnamed (图片) -->
                <div id="u189" class="ax_default _图片">
                    <img id="u189_img" class="img " src="images/个人信息页/返回按钮_u165.png"/>
                </div>

                <!-- Unnamed (热区) -->
                <div id="u190" class="ax_default">
                </div>
            </div>
        </c:if>
    </c:if>
</div>
</body>
</html>
