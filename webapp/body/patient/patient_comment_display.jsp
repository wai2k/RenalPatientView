<%@ taglib uri="/tags/struts-html" prefix="html" %>
<%@ taglib uri="/tags/struts-bean" prefix="bean" %>
<%@ taglib uri="/tags/struts-logic" prefix="logic" %>
<%@ taglib uri="/tags/datetime" prefix="dt" %>

<html:xhtml/>

<p class="header">My Comments</p>

<html:errors/>

  <table cellpadding="3" >

    <tr>
      <td class="tableheader" align="center">Date</td>
      <td class="tableheader" align="center">Comment</td>
    </tr>

    <logic:present name="comments">

        <bean:size id="numComments" name="comments"/>

        <logic:iterate name="comments" id="comment">
             <tr>
                 <td class="tablecell" align="center"><bean:write name="comment" property="formattedDatestamp" /></td>
                 <td class="tablecell" align="center"><bean:write name="comment" property="body" /></td>
             </tr>
        </logic:iterate>


    </logic:present>


  </table>

<br/>

<logic:equal value="1" name="numComments">
    <html:link action="/patient/patientEnteredCommentDisplayAll">View all comments</html:link>
</logic:equal>


