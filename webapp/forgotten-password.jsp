<%@ taglib uri="/tags/struts-tiles" prefix="tiles" %>

<tiles:insert definition="default.layout" flush="true" >

    <tiles:put name="left_nav" value="/common/left_nav_empty.jsp" />

    <tiles:put name="body" value="/body/forgotten-password.jsp" />

</tiles:insert>