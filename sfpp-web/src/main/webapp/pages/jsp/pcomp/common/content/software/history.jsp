<%@ page import="com.sf.sfpp.pcomp.common.model.extend.PcompSoftwareExtend" %>
<%@ page import="com.sf.sfpp.common.Constants" %>
<%@ page import="com.sf.sfpp.pcomp.common.domain.PcompCacheObject" %>
<%@ page import="com.sf.sfpp.common.domain.WebCache" %>
<%@ page import="com.sf.sfpp.pcomp.common.PcompConstants" %>
<%@ page import="com.sf.sfpp.pcomp.common.model.PcompVersion" %>
<%@ page import="com.sf.sfpp.pcomp.common.model.extend.PcompVersionExtend" %>
<%@ page import="com.sf.sfpp.web.common.utils.EditorMDUtils" %>
<%@page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%
    WebCache webCache = (WebCache) request.getAttribute(Constants.WEB_CACHE_KEY);
    PcompCacheObject pcompCacheObject = (PcompCacheObject) webCache.getCacheObject();
    PcompSoftwareExtend pcompSoftware = (PcompSoftwareExtend) pcompCacheObject.getPcompSoftware();
    String pcomp_version = (String) request.getAttribute(PcompConstants.PCOMP_VERSION);
    for (PcompVersion pcompVersion : pcompSoftware.getPcompVersions()) {
        if (pcompVersion.getId().equals(pcomp_version)) {
            PcompVersionExtend pcompVersionExtend = (PcompVersionExtend) pcompVersion;
%>
<h1><%=PcompConstants.HISTORY_INTRODUCTION_CH%>：</h1>
<div id="<%=PcompConstants.HISTORY_INTRODUCTION%>">
    <textarea style="display:none;"><%=pcompVersionExtend.getIntroduction()%></textarea>
</div>
<h1><%=PcompConstants.HISTORY_QUICKSTART_CH%>：</h1>
<div id="<%=PcompConstants.HISTORY_QUICKSTART%>">
    <textarea style="display:none;"><%=pcompVersionExtend.getQuickStart()%></textarea>
</div>
<h1><%=PcompConstants.HISTORY_DOWNLOAD_CH%>：</h1>
<div id="<%=PcompConstants.HISTORY_DOWNLOAD%>">
    <textarea style="display:none;"><%=EditorMDUtils.formatDownload(pcompVersionExtend)%></textarea>
</div>
<%
            break;
        }
    }
%>


