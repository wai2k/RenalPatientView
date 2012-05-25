<%@ taglib uri="/tags/struts-html" prefix="html" %>
<%@ taglib uri="/tags/struts-bean" prefix="bean" %>
<%@ taglib uri="/tags/struts-logic" prefix="logic" %>
<%@ taglib uri="/tags/datetime" prefix="dt" %>

<html:xhtml/>

<p class="header">About Me</p>


<table cellpadding="3" >

<html:form action="/patient/aboutmeUpdate">

    <logic:notEmpty name="aboutme">
        <html:hidden name="aboutme" property="id"/>
        <html:hidden name="aboutme" property="nhsno"/>
    </logic:notEmpty>

    <tr>
        <td align="center" >
            <p><b>Things people should know about me</b><br />(For example...)</p>
        </td>
    </tr>
    <tr>
        <td >
            <logic:empty name="aboutme">
                <html:textarea property="aboutme" rows="5" cols="40"/>
            </logic:empty>

            <logic:notEmpty name="aboutme">
                <html:textarea name="aboutme" property="aboutme" rows="5" cols="40"/>
            </logic:notEmpty>
        </td>
    </tr>
    <tr>
        <td >&nbsp;</td>
    </tr>

    <tr>
        <td >
            <p><b>Things I'd like to talk about</b><br />
                (For example... what should my blood pressure be, home dialysis, stopping dialysis, getting a transplant)</p>
        </td>
    </tr>
    <tr>
        <td >
            <logic:empty name="aboutme">
                <html:textarea property="talkabout" rows="5" cols="40"/>
            </logic:empty>

            <logic:notEmpty name="aboutme">
                <html:textarea name="aboutme" property="talkabout" rows="5" cols="40"/>
            </logic:notEmpty>
        </td>
    </tr>
    <tr>
        <td >&nbsp;</td>
    </tr>

    <tr>
        <td align="left">
             <html:submit value="Update" styleClass="formButton"/>
        </td>
    </tr>

</html:form>
    <tr>
        <td >&nbsp;</td>
    </tr>
<%--
    <tr>
        <td >
            <p><b>Upload an Image</b><br />
                (jpeg, gif or tiff and no larger than 1Mb)</p>
        </td>
    </tr>

    <html:form action="/patient/aboutmeImageUpload" method="post" enctype="multipart/form-data">
    <tr>
        <html:hidden name="user" property="username"  />
        <td align="left">
             <html:file property="aboutmeImageFile"/>
</td>
        </tr>
        <tr>
        <td>
             <html:submit styleClass="formButton">Upload Image</html:submit>
        </td>
    </tr>
</html:form>
--%>
</table>



