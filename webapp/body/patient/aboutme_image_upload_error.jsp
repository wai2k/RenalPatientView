<%@ taglib uri="/tags/struts-html" prefix="html" %>
<%@ taglib uri="/tags/struts-bean" prefix="bean" %>
<%@ taglib uri="/tags/struts-logic" prefix="logic" %>
<%@ taglib uri="/tags/datetime" prefix="dt" %>

<html:xhtml/>

<p class="header">About Me</p>




    <html:errors/>

    <br />

    <html:form action="/patient/aboutmeEdit">
        <html:submit value="Try again" styleClass="formButton"/>
    </html:form>





