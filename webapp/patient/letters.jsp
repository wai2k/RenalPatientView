<%@ taglib uri="/tags/struts-tiles" prefix="tiles" %>

<tiles:insert definition="patient.layout" flush="true" >

    <tiles:put name="body" value="/body/patient/letters.jsp" />

</tiles:insert>