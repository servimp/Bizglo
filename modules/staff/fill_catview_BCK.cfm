
<link rel="stylesheet" href="css/w3.css"><!-- NO OLVIDAR COMENTAR --> 
<!-- QUERIES -->
<CFSTOREDPROC PROCEDURE="MAIN_CATEGORIES" DATASOURCE="bizglo">
  <cfprocresult
      name="MAIN_CATEGORIES">
</CFSTOREDPROC>


<div class="w3-card w3-GRIS0 w3-round-small" id="fill_catview">
     <ul class="w3-ul-bizglo-3 w3-hoverable">
<cfoutput>
<cfloop index="iconsulta" from="2" to="#MAIN_CATEGORIES.recordCount#">



<li class="w3-bar w3-text-AZULPRO1"> 
     
    <span class="w3-badge w3-medium W3-AZULPRO1" style="background-color: ##1E083F;"><b>1</b></span>
    <span class="w3-large">#UCase(MAIN_CATEGORIES.NAME[iconsulta])#<span>&nbsp;&nbsp;<input class="w3-check" type="checkbox" id="#MAIN_CATEGORIES.ID[iconsulta]#"></span>&nbsp;
      <span><input class="w3-radio" type="radio" name="cat_radio" value="#MAIN_CATEGORIES.ID[iconsulta]#"></span></span>
 </li>

                       <cfif MAIN_CATEGORIES.LAST[iconsulta] eq 0>
                      <CFSTOREDPROC PROCEDURE="SUBCATEGORIES" DATASOURCE="bizglo">
                        <cfprocparam type="in" cfsqltype="CF_SQL_NUMERIC" variable="ID" value="#MAIN_CATEGORIES.ID[iconsulta]#">
                        <cfprocresult
                            name="SUBCATEGORIES">
                      </CFSTOREDPROC>


                      <cfif '#subcategories.recordcount#' gt 0>
                      <div style="margin-left: 48px;">
                      <ul class="w3-ul-bizglo-2 w3-hoverable">
                      <cfloop index="iconsultasub" from="1" to="#SUBCATEGORIES.recordCount#">
                      <li class="w3-bar w3-text-AZULPRO1"> 
                          <span class="w3-badge w3-small W3-AZULPRO" style="background-color: ##323A82;"><b>2</b></span>
                          <span class="w3-large">#SUBCATEGORIES.NAME[iconsultasub]#<span>&nbsp;&nbsp;<input class="w3-check" type="checkbox" id="#SUBCATEGORIES.ID[iconsultasub]#"></span>&nbsp;
                            <span><input class="w3-radio" type="radio" name="cat_radio" value="#SUBCATEGORIES.ID[iconsultasub]#"></span></span>



                                        <cfif SUBCATEGORIES.LAST[iconsultasub] eq 0>
                                        <CFSTOREDPROC PROCEDURE="SUBCATEGORIES" DATASOURCE="bizglo">
                                          <cfprocparam type="in" cfsqltype="CF_SQL_NUMERIC" variable="ID" value="#SUBCATEGORIES.ID[iconsultaSUB]#">
                                          <cfprocresult
                                              name="SUBCATEGORIES2">
                                        </CFSTOREDPROC>


                                        <cfif '#subcategories2.recordcount#' gt 0>
                                        <div style="margin-left: 48px;">
                                        <ul class="w3-ul-bizglo-2 w3-hoverable">
                                        <cfloop index="iconsultasub2" from="1" to="#SUBCATEGORIES2.recordCount#">
                                        <li class="w3-bar w3-text-AZULPAR"> 
                                            <span class="w3-badge w3-small W3-AZULPAR" style="background-color: ##317EA6;"><b>3</b></span>
                                            <span class="w3-large">#SUBCATEGORIES2.NAME[iconsultasub2]#<span>&nbsp;&nbsp;<input class="w3-check" type="checkbox" id="#SUBCATEGORIES2.ID[iconsultasub2]#"></span>&nbsp;
                                              <span><input class="w3-radio" type="radio" name="cat_radio" value="#SUBCATEGORIES2.ID[iconsultasub2]#"></span></span>



                                                                    <cfif SUBCATEGORIES2.LAST[iconsultasub2] eq 0>
                                                                      <CFSTOREDPROC PROCEDURE="SUBCATEGORIES" DATASOURCE="bizglo">
                                                                      <cfprocparam type="in" cfsqltype="CF_SQL_NUMERIC" variable="ID" value="#SUBCATEGORIES2.ID[iconsultaSUB2]#">
                                                                      <cfprocresult
                                                                          name="SUBCATEGORIES3">
                                                                    </CFSTOREDPROC>


                                                                    <cfif '#subcategories3.recordcount#' gt 0>
                                                                    <div style="margin-left: 48px;">
                                                                    <ul class="w3-ul-bizglo-2 w3-hoverable">
                                                                    <cfloop index="iconsultasub3" from="1" to="#SUBCATEGORIES3.recordCount#">
                                                                    <li class="w3-bar w3-text-AZULPAR"> 
                                                                        <span class="w3-badge w3-small W3-AZULPAR" style="background-color: ##317EA6;"><b>4</b></span>
                                                                        <span class="w3-large">#SUBCATEGORIES3.NAME[iconsultasub3]#<span>&nbsp;&nbsp;<input class="w3-check" type="checkbox" id="#SUBCATEGORIES3.ID[iconsultasub3]#"></span>&nbsp;
                                                                          <span><input class="w3-radio" type="radio" name="cat_radio" value="#SUBCATEGORIES3.ID[iconsultasub3]#"></span></span>

                                                                      

                                                                    </li>
                                                                    </cfloop>
                                                                    </ul></div>
                                                                    </cfif>
                                                                    </cfif>




                                        </li>
                                        </cfloop>
                                        </ul></div>
                                        </cfif>
                                        </cfif>


                      </li>
                      </cfloop>
                      </ul></div>
                      </cfif>
                      </cfif>

</cfloop>
</cfoutput>
</ul>
</div>