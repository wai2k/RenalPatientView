<%@ taglib uri="/tags/struts-html" prefix="html" %>
<%@ taglib uri="/tags/struts-bean" prefix="bean" %>
<%@ taglib uri="/tags/struts-logic" prefix="logic" %>
<%@ taglib uri="/tags/datetime" prefix="dt" %>

<html:xhtml/>

<p class="header">Patient Deleted</p>


On <dt:format pattern="d MMM yyyy"><dt:currentTime/></dt:format> you successfully deleted the patient with the following details:
<br /><br />

<table cellpadding="3" >
    <tr>
      <td><b>User Name</b></td>
      <td><bean:write name="patient" property="username" /></td>
    </tr>
    <tr>
      <td><b>Name</b></td>
      <td><bean:write name="patient" property="name" /></td>
    </tr>
    <tr>
      <td><b>NHS Number</b></td>
      <td><bean:write name="patient" property="nhsno" /></td>
    </tr>
   <tr>
      <td>&nbsp;</td>
    </tr>
 </table>

From the unit called <b><bean:write name="unit" property="shortname" /></b>

