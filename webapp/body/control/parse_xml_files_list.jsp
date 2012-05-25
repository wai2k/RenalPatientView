<%@ taglib uri="/tags/struts-html" prefix="html" %>
<%@ taglib uri="/tags/struts-bean" prefix="bean" %>
<%@ taglib uri="/tags/struts-logic" prefix="logic" %>

<html:xhtml/>

<table>

  <logic:iterate id="xmlFile" name="xmlFiles">

    <tr>
      <html:form action="/control/parseXml">
        <input type="hidden" name="src" value="<bean:write property="canonicalPath" name="xmlFile"/>"/>
        <td><bean:write name="xmlFile" property="name" /></td>
        <td><html:submit /></td>
      </html:form>
    </tr>

  </logic:iterate>

</table>