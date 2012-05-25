<%@ taglib uri="/tags/struts-html" prefix="html" %>
<%@ taglib uri="/tags/struts-bean" prefix="bean" %>
<%@ taglib uri="/tags/struts-logic" prefix="logic" %>

<html:xhtml/>


<p class="header"><bean:write name="splashPage" property="headline"/></p>

<p style="white-space: pre-wrap;"><bean:write filter="false" name="splashPage" property="bodytext"/></p>      