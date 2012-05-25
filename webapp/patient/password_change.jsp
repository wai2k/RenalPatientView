<%@ taglib uri="/tags/struts-tiles" prefix="tiles" %>

<tiles:insert definition="firstlogonpatient.layout" flush="true">

  <tiles:put name="header" value="/common/header_pwdmeter.jsp?cdToStyles=../" />
  <tiles:put name="body" value="/body/patient/password_change.jsp"/>

</tiles:insert>