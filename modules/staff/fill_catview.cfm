
<link rel="stylesheet" href="css/w3.css"><!-- NO OLVIDAR COMENTAR --> 
<!-- QUERIES -->
<CFSTOREDPROC PROCEDURE="MAIN_CATEGORIES" DATASOURCE="bizglo">
  <cfprocresult
      name="MAIN_CATEGORIES">
</CFSTOREDPROC>

<div class="w3-card w3-GRIS0 w3-round-small" id="fill_catview">
<ul class="w3-ul-bizglo-3 w3-hoverable w3-panel">
<cfoutput query="MAIN_CATEGORIES" startRow=2>



<li class="w3-bar w3-text-AZULPRO1"> 
     
    <span class="w3-badge w3-medium W3-AZULPRO1" style="background-color: ##1E083F;"><b>1</b></span>
    <span class="w3-large">#UCase(MAIN_CATEGORIES.NAME)#<span><!---input class="w3-check" type="checkbox" id="#MAIN_CATEGORIES.ID#"----></span>&nbsp;
      <span><input class="w3-radio" type="radio" name="cat_radio" value="#MAIN_CATEGORIES.ID#">
      <input type="hidden" name="mid_radio" value="#MAIN_CATEGORIES.ID_MOTHER#">  
      </span></span>
 </li>
                   
                                        <cfif #MAIN_CATEGORIES.LAST# eq 0>
                                        <CFSTOREDPROC PROCEDURE="SUBCATEGORIES" DATASOURCE="bizglo">
                                          <cfprocparam type="in" cfsqltype="CF_SQL_NUMERIC" variable="ID" value="#MAIN_CATEGORIES.ID#">
                                          <cfprocresult name="SUBCATEGORIES">
                                        </CFSTOREDPROC>
                                        
                                        <cfif #SUBCATEGORIES.recordcount# gt 0>
                                          <cfset cats_array=Arraynew(1)>
                                          <cfset TIMES = 1>
                                          <cfset cats_array[#TIMES#]=SUBCATEGORIES>
                                          <cfinclude template="fill_cat_recursive.cfm">
                                        </cfif>
                                        </cfif> 
                                        
</cfoutput>
</ul>
</div>