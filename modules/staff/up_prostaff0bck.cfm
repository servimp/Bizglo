<CFSTOREDPROC PROCEDURE="MAIN_CATEGORIES" DATASOURCE="bizglo">
  <cfprocresult
      name="MAIN_CATEGORIES">
</CFSTOREDPROC>

<ul class="w3-ul w3-hoverable w3-animate-opacity">
<cfoutput query="MAIN_CATEGORIES" startRow=2>	
  <li onclick="custom_1('#MAIN_CATEGORIES.name#','#MAIN_CATEGORIES.last#','up_prostaff2','subcats','#MAIN_CATEGORIES.ID#',0)">#MAIN_CATEGORIES.name#</li>
 </cfoutput>
</ul>