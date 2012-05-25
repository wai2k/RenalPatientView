<%@ taglib uri="/tags/struts-html" prefix="html" %>
<%@ taglib uri="/tags/struts-bean" prefix="bean" %>
<%@ taglib uri="/tags/struts-logic" prefix="logic" %>
<%@ taglib uri="/tags/datetime" prefix="dt" %>

<html:xhtml/>

<p class="header">Patient</p>


There is already a patient registered on RPV with that NHS number.

Please carefully check the details of that patient, then you can choose to add the existing user to your unit.
<br /><br />

<table cellpadding="3" >
    <tr>
      <td><b>User Name</b></td>
      <td><bean:write name="nhsnoAlreadyExists" property="username" /></td>
    </tr>
    <tr>
      <td><b>NHS Number</b></td>
      <td><bean:write name="userMapping" property="nhsno" /></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <html:form action="/control/patientAddToUnit">
        <html:hidden property="nhsno" name="userMapping" />
        <html:hidden property="username" name="nhsnoAlreadyExists" />
        <html:hidden property="unitcode" name="userMapping" />
        <td colspan="2"><html:submit value="Add to Unit" styleClass="formbutton" /></td>
      </html:form>
    </tr>
 </table>

<br />

