<%@ taglib uri="/tags/struts-html" prefix="html" %>
<%@ taglib uri="/tags/struts-bean" prefix="bean" %>
<%@ taglib uri="/tags/struts-logic" prefix="logic" %>

<html:xhtml/>

<html:form action="/control/decrypt">

  <html:text property="src" />
  <html:text property="dest" />
  <html:text property="passphrase" />


</html:form>