<%@ taglib uri="/tags/struts-html" prefix="html" %>
<%@ taglib uri="/tags/struts-logic" prefix="logic" %>
<%@ taglib uri="/tags/struts-bean" prefix="bean" %>
<%@ taglib uri="/tags/datetime" prefix="dt" %>
      <tr>
        <td colspan="10">
          <table width="100%">
            <tr>
                <logic:present role="patient,demo,superadmin,unitadmin,unitstaff">
                   <td class="infostrip" align="left">logged in as: <b><%= request.getUserPrincipal().getName()%></b> <html:link action="logout">log out</html:link></td>
                </logic:present>

                <logic:notPresent role="patient,demo,superadmin,unitadmin,unitstaff">
                   <td class="infostrip" align="left">&nbsp;&nbsp;<html:link action="/patient/patient_details">log in</html:link></td>
                </logic:notPresent>

                <td class="infostrip" align="right"><dt:format pattern="d MMM yyyy"><dt:currentTime/></dt:format></td>
            </tr>
          </table>
        </td>
      </tr>
