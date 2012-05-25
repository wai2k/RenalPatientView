<%@ taglib uri="/tags/struts-tiles" prefix="tiles" %>

<tiles:insert definition="patient.layout" flush="true" >

    <tiles:put name="body" value="/body/patient/medicines.jsp" />
    <tiles:put name="left_nav" value="/common/left_nav_empty.jsp" />
    
</tiles:insert>