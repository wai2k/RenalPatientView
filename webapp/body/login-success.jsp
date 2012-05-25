<%@ taglib uri="/tags/struts-html" prefix="html" %>
<%@ taglib uri="/tags/struts-logic" prefix="logic" %>
<%@ taglib uri="/tags/struts-bean" prefix="bean" %>
<%@ taglib uri="/tags/datetime" prefix="dt" %>

<p class="header">Login Successful</p>

<p><b>This is a confidential record.</b> If you should not be reading it please <html:link action="logout">log out</html:link> now.</p>


<dl>

  <%
    if (request.getAttribute("lastLogin") != null) {
  %>
  <dt>Last login recorded</dt>
  <dd><%=request.getAttribute("lastLogin")%>
  </dd>
  <%
    }
  %>

  <%
    if (request.getAttribute("lastDataDate") != null) {
  %>
  <dt>Last data received for this record</dt>
  <dd>On <%=request.getAttribute("lastDataDate")%>
    <%
      if (request.getAttribute("lastDataFrom") != null) {
    %>
    from <%=request.getAttribute("lastDataFrom")%>
    <%
      }
    %>
  </dd>
  <%
    }
  %>
</dl>


<%
  if (request.getAttribute("isPatient") != null) {
%>
<form action="/patient/patient_details.do">
<p><b><input type="submit" value="Continue" class="formbutton" style="border-style: outset;" tabindex="3" /></b></p>
    </form>

<%
} else {
%>
<form action="/control/index.jsp">
   <p><b><input type="submit" value="Continue" class="formbutton" style="border-style: outset;" tabindex="3" /></b></p>
</form>
<%
  }
%>


<html:link href="/password-advice.jsp">Find out more about secure passwords.</html:link>
