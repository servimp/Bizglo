<!--- QUERIES ---->
<CFSTOREDPROC PROCEDURE="products" DATASOURCE="bizglo">
  <cfprocresult
      name="products">
</CFSTOREDPROC>
<!---END QUERIES ---->
 

<div class="w3-card w3-GRIS0 w3-round-small">
<div class="w3-container" style="padding-bottom: 16px; padding-top: 8px;"> 

 <cfscript>
    catlevels = arraynew();
    catlevels[1] = 0;
    catlevels[2] = 0;
    catlevels[3] = 0;
    catlevels[4] = 0;
    catlevels[5] = 0;
  </cfscript>
 
<cfoutput query="products">
<




<cfif products.CAT1 eq catlevels[1]><!---FIRST LEVEL---->
     <cfif products.CAT1 eq products.ID_CATEGORY>
          #products.TITLE#<BR>
     <cfelse>
          <cfif products.CAT2 eq catlevels[2]>
              <cfif products.CAT2 eq products.ID_CATEGORY>
                  #products.TITLE#<BR>
              <cfelse>
                  <cfif products.CAT3 eq catlevels[3]>
                      <cfif products.CAT3 eq products.ID_CATEGORY>
                          #products.TITLE#<BR>
                      <cfelse>
                          <cfif products.CAT4 eq catlevels[4]>
                              <cfif products.CAT4 eq products.ID_CATEGORY>
                                  #products.TITLE#<BR>
                              <cfelse>
                                  <cfif products.CAT5 eq catlevels[5]>
                                      #products.TITLE#<BR><!---It is like a tail---->
                                  <cfelse>
                                      <h5>#products.CAT5NAME# CAT5 -- 5.1</h5>
                                      <cfset catlevels[5]=products.CAT5>
                                      <cfif products.CAT5 eq products.ID_CATEGORY><!---SIXTH LEVEL---->
                                          #products.TITLE#<BR>  
                                      <cfelse><!---SIXTH LEVEL---->
                          
                                      </cfif><!---SIXTH LEVEL---->
                                  </cfif> 
                              </cfif>         
                          <cfelse>
                            <h5>#products.CAT4NAME# CAT4 -- 4.1</h5>
                              <cfset catlevels[4]=products.CAT4>
                              <cfif products.CAT4 eq products.ID_CATEGORY><!---FIFTH LEVEL---->
                                  #products.TITLE#<BR>  
                              <cfelse><!---FIFTH LEVEL---->
                                  <h5>#products.CAT5NAME# CAT5 -- 4.2</h5>
                                  <cfset catlevels[5]=products.CAT5>
                                  <cfif products.CAT5 eq products.ID_CATEGORY><!---SIXTH LEVEL---->
                                      #products.TITLE#<BR>  
                                  <cfelse><!---SIXTH LEVEL---->
                      
                                  </cfif><!---SIXTH LEVEL---->
                              </cfif><!---FIFTH LEVEL---->
                          </cfif>  
                      </cfif>   
                  <cfelse>
                      <h5>#products.CAT3NAME# CAT3 -- 3.1</h5>
                      <cfset catlevels[3]=products.CAT3>
                      <cfif products.CAT3 eq products.ID_CATEGORY><!---FOURTH LEVEL---->
                          #products.TITLE#<BR>  
                      <cfelse><!---FOURTH LEVEL---->
                          <h5>#products.CAT4NAME# CAT4 -- 3.2</h5>
                          <cfset catlevels[4]=products.CAT4>
                          <cfif products.CAT4 eq products.ID_CATEGORY><!---FIFTH LEVEL---->
                              #products.TITLE#<BR>  
                          <cfelse><!---FIFTH LEVEL---->
                              <h5>#products.CAT5NAME# CAT5 -- 3.3</h5>
                              <cfset catlevels[5]=products.CAT5>
                              <cfif products.CAT5 eq products.ID_CATEGORY><!---SIXTH LEVEL---->
                                  #products.TITLE#<BR>  
                              <cfelse><!---SIXTH LEVEL---->
                  
                              </cfif><!---SIXTH LEVEL---->
                          </cfif><!---FIFTH LEVEL---->
                      </cfif><!---FOURTH LEVEL---->
                  </cfif>
              </cfif>    
          <cfelse>
              <h4>#products.CAT2NAME# CAT2 -- 2.1</h4>
              <cfset catlevels[2]=products.CAT2>
              <cfif products.CAT2 eq products.ID_CATEGORY><!---THIRD LEVEL---->
                  #products.TITLE#<BR>  
              <cfelse><!---THIRD LEVEL---->
                  <h5>#products.CAT3NAME# CAT3 -- 2.2</h5>
                  <cfset catlevels[3]=products.CAT3>
                  <cfif products.CAT3 eq products.ID_CATEGORY><!---FOURTH LEVEL---->
                      #products.TITLE#<BR>  
                  <cfelse><!---FOURTH LEVEL---->
                      <h5>#products.CAT4NAME# CAT4 -- 2.3</h5>
                      <cfset catlevels[4]=products.CAT4>
                      <cfif products.CAT4 eq products.ID_CATEGORY><!---FIFTH LEVEL---->
                          #products.TITLE#<BR>  
                      <cfelse><!---FIFTH LEVEL---->
                          <h5>#products.CAT5NAME# CAT5 -- 2.4</h5>
                          <cfset catlevels[5]=products.CAT5>
                          <cfif products.CAT5 eq products.ID_CATEGORY><!---SIXTH LEVEL---->
                              #products.TITLE#<BR>  
                          <cfelse><!---SIXTH LEVEL---->
              
                          </cfif><!---SIXTH LEVEL---->
                      </cfif><!---FIFTH LEVEL---->
                  </cfif><!---FOURTH LEVEL---->
              </cfif><!---THIRD LEVEL---->
          </cfif>
     </cfif>    
<cfelse><!---FIRST LEVEL---->
    <h3>#products.CAT1NAME# CAT1 -- 1.1</h3>
    <cfset catlevels[1]=products.CAT1>
    <cfif products.CAT1 eq products.ID_CATEGORY><!---SECOND LEVEL---->
        #products.TITLE#<BR>  
    <cfelse><!---SECOND LEVEL---->
        <h4>#products.CAT2NAME# CAT2 -- 1.2</h4>
        <cfset catlevels[2]=products.CAT2>
        <cfif products.CAT2 eq products.ID_CATEGORY><!---THIRD LEVEL---->
            #products.TITLE#<BR>  
        <cfelse><!---THIRD LEVEL---->
            <h5>#products.CAT3NAME# CAT3 -- 1.3</h5>
            <cfset catlevels[3]=products.CAT3>
            <cfif products.CAT3 eq products.ID_CATEGORY><!---FOURTH LEVEL---->
                #products.TITLE#<BR>  
            <cfelse><!---FOURTH LEVEL---->
                <h5>#products.CAT4NAME# CAT4 -- 1.4</h5>
                <cfset catlevels[4]=products.CAT4>
                <cfif products.CAT4 eq products.ID_CATEGORY><!---FIFTH LEVEL---->
                    #products.TITLE#<BR>  
                <cfelse><!---FIFTH LEVEL---->
                    <h5>#products.CAT5NAME# CAT5 -- 1.5</h5>
                    <cfset catlevels[5]=products.CAT5>
                    <cfif products.CAT5 eq products.ID_CATEGORY><!---SIXTH LEVEL---->
                        #products.TITLE#<BR>  
                    <cfelse><!---SIXTH LEVEL---->
        
                    </cfif><!---SIXTH LEVEL---->
                </cfif><!---FIFTH LEVEL---->
            </cfif><!---FOURTH LEVEL---->
        </cfif><!---THIRD LEVEL---->
    </cfif><!---SECOND LEVEL---->
</cfif><!---FIRST LEVEL---->





</cfoutput>








 
 <div><h5 class="w3-text-AZULPRO1 w3-h5-pro"><b>MOBILE PHONES</b></h5>
<div class="w3-container">
  <span class="w3-text-AZULPAR"><b>Nokia</b></span>
  <div class="w3-products">
  <span class="w3-text-AZULPAR"><b>Nokia Lumia 1020</b></span>
   <table class="w3-table w3-centered w3-biz-table">
        <tr class="w3-small w3-GRIS1" style="font-weight: bold;">
          <td>
            TITLE
          </td>
          <td>
            QUANTITY
          </td>
          <td>
            DESCRIPTION
          </td>
          <td>
            FEATURES
          </td>
          <td>
            ACTIONS
          </td>
        </tr>
           <tr class="w3-text-GRIS2">
          <td>
            Nokia Lumia Staff's selection
          </td>
          <td>
            26
          </td>
          <td>
            kitted, new in box stock.
          </td>
          <td>
            Bluetooth, superior Wifi
          </td>
          <td>
             <button class="w3-button w3-GRIS1 w3-round w3-text-GRIS2" disabled><span style="padding-left:2px;"><i class="fa fa-caret-down"></i></span>&nbsp;&nbsp;&nbsp;Actions</button>
          </td>
        </tr>
           <tr class="w3-text-AZULPRO">
          <td>
            Nokia Lumia 928
          </td>
          <td>
            32
          </td>
          <td>
            Used in Good Condition, B Stock.
          </td>
          <td>
            Bluetooth, 4G LTE, Wifi B-G-N
          </td>
          <td>
            <div class="w3-dropdown-hover">
    <button class="w3-button w3-GRIS1 w3-round w3-text-AZULPAR"><span style="padding-left:2px;"><i class="fa fa-caret-down"></i></span>&nbsp;&nbsp;&nbsp;Actions</button>
    <div class="w3-dropdown-content w3-bar-block w3-card-2 w3-GRIS1">
      <a href="#" class="w3-bar-item w3-button w3-text-AZULPAR">View Identifiers</a>
      <a href="#" class="w3-bar-item w3-button w3-text-AZULPAR">View Historical</a>
      <a href="#" class="w3-bar-item w3-button w3-text-AZULPAR">Edit</a>
      <a href="#" class="w3-bar-item w3-button w3-text-AZULPAR">Offload Inventory</a>
      <a href="#" class="w3-bar-item w3-button w3-text-AZULPAR">Delete</a>
    </div>
  </div>
          </td>
        </tr>
    </table>


  </div>
</div>

 </div>

 <div><h5 class="w3-text-AZULPRO1 w3-h5-pro"><b>HOT-SPOTS</b></h5></div>




 <div class="w3-products">
  <span class="w3-text-AZULPAR"><b>Sierra/Netgear</b></span>
   <table class="w3-table w3-centered w3-biz-table">
        <tr class="w3-small w3-GRIS1" style="font-weight: bold;">
          <td>
            TITLE
          </td>
          <td>
            QUANTITY
          </td>
          <td>
            DESCRIPTION
          </td>
          <td>
            FEATURES
          </td>
          <td>
            ACTIONS
          </td>
        </tr>
       
           <tr class="w3-text-AZULPRO">
          <td>
            Sierra AC 770s
          </td>
          <td>
            28
          </td>
          <td>
            Used in Good Condition, B Stock.
          </td>
          <td>
            10 Users, multi connection
          </td>
          <td>
              <div class="w3-dropdown-hover">
    <button class="w3-button w3-GRIS1 w3-round w3-text-AZULPAR"><span style="padding-left:2px;"><i class="fa fa-caret-down"></i></span>&nbsp;&nbsp;&nbsp;Actions</button>
    <div class="w3-dropdown-content w3-bar-block w3-card-2 w3-GRIS1">
      <a href="#" class="w3-bar-item w3-button w3-text-AZULPAR">View Identifiers</a>
      <a href="#" class="w3-bar-item w3-button w3-text-AZULPAR">View Historical</a>
      <a href="#" class="w3-bar-item w3-button w3-text-AZULPAR">Edit</a>
      <a href="#" class="w3-bar-item w3-button w3-text-AZULPAR">Offload Inventory</a>
      <a href="#" class="w3-bar-item w3-button w3-text-AZULPAR">Delete</a>
    </div>
  </div>
          </td>
        </tr>

  <tr class="w3-text-AZULPRO">
          <td>
            Sieera 781s Unite Pro
          </td>
          <td>
            32
          </td>
          <td>
            Like brand new, A Stock.
          </td>
          <td>
            Hotcall, 4G LTE, Wifi B-G-N
          </td>
          <td>
               <div class="w3-dropdown-hover">
    <button class="w3-button w3-GRIS1 w3-round w3-text-AZULPAR"><span style="padding-left:2px;"><i class="fa fa-caret-down"></i></span>&nbsp;&nbsp;&nbsp;Actions</button>
    <div class="w3-dropdown-content w3-bar-block w3-card-2 w3-GRIS1">
      <a href="#" class="w3-bar-item w3-button w3-text-AZULPAR">View Identifiers</a>
      <a href="#" class="w3-bar-item w3-button w3-text-AZULPAR">View Historical</a>
      <a href="#" class="w3-bar-item w3-button w3-text-AZULPAR">Edit</a>
      <a href="#" class="w3-bar-item w3-button w3-text-AZULPAR">Offload Inventory</a>
      <a href="#" class="w3-bar-item w3-button w3-text-AZULPAR">Delete</a>
    </div>
  </div>
          </td>
        </tr>

          <tr class="w3-text-AZULPRO">
          <td>
            Unite Explore 815s
          </td>
          <td>
            32
          </td>
          <td>
            New In Box.
          </td>
          <td>
            15 users, hot on wifi G GLobal.
          </td>
          <td>
            <div class="w3-dropdown-hover">
    <button class="w3-button w3-GRIS1 w3-round w3-text-AZULPAR"><span style="padding-left:2px;"><i class="fa fa-caret-down"></i></span>&nbsp;&nbsp;&nbsp;Actions</button>
    <div class="w3-dropdown-content w3-bar-block w3-card-2 w3-GRIS1">
      <a href="#" class="w3-bar-item w3-button w3-text-AZULPAR">View Identifiers</a>
      <a href="#" class="w3-bar-item w3-button w3-text-AZULPAR">View Historical</a>
      <a href="#" class="w3-bar-item w3-button w3-text-AZULPAR">Edit</a>
      <a href="#" class="w3-bar-item w3-button w3-text-AZULPAR">Offload Inventory</a>
      <a href="#" class="w3-bar-item w3-button w3-text-AZULPAR">Delete</a>
    </div>
  </div>
          </td>
        </tr>

    </table>


  </div>




</div></div>