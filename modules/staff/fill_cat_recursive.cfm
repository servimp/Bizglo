                   
                      <CFSET times_label = times + 1>  
                      <div style="margin-left: 48px;">
                      <ul class="w3-ul-bizglo-2 w3-hoverable">
                      <cfoutput query="cats_array[#times#]">
                      <li class="w3-bar w3-text-AZULPRO1"> 
                          <span class="w3-badge w3-small W3-AZULPRO" style="background-color: ##323A82;"><b>#times_label#</b></span>
                          <span class="w3-large">#cats_array[#times#].NAME#<span><!---input class="w3-check" type="checkbox" id="#cats_array[#times#].ID#"----></span>&nbsp;
                            <span><input class="w3-radio" type="radio" name="cat_radio" value="#cats_array[#times#].ID#">
                            <input type="hidden" name="mid_radio" value="#cats_array[#times#].ID_MOTHER#"></span></span>
                                          <cfif #cats_array[#times#].LAST# eq 0>
                                          <CFSTOREDPROC PROCEDURE="SUBCATEGORIES" DATASOURCE="bizglo">
                                          <cfprocparam type="in" cfsqltype="CF_SQL_NUMERIC" variable="ID" value="#cats_array[#times#].ID#">
                                          <cfprocresult name="SUBCATEGORIES">
                                          </CFSTOREDPROC>
                                         <cfif #SUBCATEGORIES.recordcount# gt 0>
                                          <cfset TIMES = TIMES + 1>
                                          <cfset cats_array[#TIMES#]=SUBCATEGORIES>
                                          <cfinclude template="fill_cat_recursive.cfm">
                                          <cfset TIMES = TIMES - 1>
                                        </cfif>
                                        </cfif>
                                        
                      </li>
                      </cfoutput>
                      </ul></div>
                                        