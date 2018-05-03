
<!--- QUERIES ---->
<CFSTOREDPROC PROCEDURE="locations" DATASOURCE="bizglo">
  <cfprocresult
      name="locations">
</CFSTOREDPROC>

<CFSTOREDPROC PROCEDURE="locations_expanded" DATASOURCE="bizglo">
  <cfprocresult
      name="locations_expanded">
</CFSTOREDPROC>

<CFSTOREDPROC PROCEDURE="inventory" DATASOURCE="bizglo">
  <cfprocresult
      name="inventory">
</CFSTOREDPROC>
<!---END QUERIES --->

 <!--- CAPSULE 1.
 CREATION OF THE TWO LEVEL ARRAY STRUCTURE FOR STORING THE NAME AND ID OF THE DIFFERENT PLACES ENABLED PER USER---->
   <cfscript>
		bizglo_places = arraynew();
		byuser_places = arraynew();
		bi_count = 1;
		bu_count = 1;
		
	    for (i = 1; i <= locations_expanded.recordCount; i++)
		{
		if (locations_expanded.LOC_TYPE[i] eq 0)
		{bizglo_places[bi_count]= array(locations_expanded.name[i], locations_expanded.id[i]);
			bi_count = bi_count+1;}
		
		else
		{byuser_places[bu_count]= array(locations_expanded.name[i], locations_expanded.id[i]);
			bu_count = bu_count+1;}
		}
	</cfscript> 
	<!---     
  <cfdump var="#locations#" label="Search Results">     
 <cfdump var="#bizglo_places#" label="Bizglo Places">
 <cfdump var="#byuser_places#" label="Byuser Places"> --->
 <!--- END CAPSULE 1.---->
 

<div class="w3-card w3-GRIS0 w3-round-small">
      <div class="w3-container"> 
       <table class="w3-table w3-bordered w3-centered">
        <tr class="w3-bottombarclear">
      <td style="padding:0;">     </td>
       <td style="padding:0;">     </td>
       
       
<!--- DYNAMIC MANAGEMENT FOR THE NUMBER OF LABELS AND THE NAMES OF THE PLACES, GRAPHIC ---->
       <cfif arraylen(bizglo_places) gt 0>
       <cfoutput>
	   <td colspan="#locations.bizglo_active#" style="padding:0;" class="w3-AMA0">
         <div class="w3-container" align="center"><span class="w3-small w3-text-AMATOT";>BIZGLO Places</span></div>
       <table cellpadding="0" cellspacing="0" style="padding:0px;" width="100%" class="w3-AMA0"><tr height="20px" class="w3-bottombarclear">
       <td style="background-image:url(images/presentation/cor_ama_open.gif); background-repeat:no-repeat; padding:0px;" width="26px"></td>
       <td style="background-image:url(images/presentation/cor_ama_stretch.gif); background-repeat:repeat-x; padding:0px;"></td>
       <td style="background-image:url(images/presentation/cor_ama_central.gif); background-repeat:repeat-x; padding:0px;" width="37px"></td>
       <td style="background-image:url(images/presentation/cor_ama_stretch.gif); background-repeat:repeat-x; padding:0px;"></td>
       <td style="background-image:url(images/presentation/cor_ama_close.gif); background-repeat:no-repeat; padding:0px;" width="26px"></td>
       </tr></table>  
       </td>
       </cfoutput>
	   </cfif>
       
       <cfif arraylen(byuser_places) gt 0>
       <cfoutput>
	   <td colspan="#locations.byuser_active#" style="padding:0;">
         <div class="w3-container" align="center"><span class="w3-small w3-text-AZULPRO";>My Places</span></div>
       <table cellpadding="0" cellspacing="0" style="padding:0px;" width="100%"><tr height="20px" class="w3-bottombarclear">
       <td style="background-image:url(images/presentation/cor_open.gif); background-repeat:no-repeat; padding:0px;" width="26px"></td>
       <td style="background-image:url(images/presentation/cor_stretch.gif); background-repeat:repeat-x; padding:0px;"></td>
       <td style="background-image:url(images/presentation/cor_central.gif); background-repeat:repeat-x; padding:0px;" width="37px"></td>
       <td style="background-image:url(images/presentation/cor_stretch.gif); background-repeat:repeat-x; padding:0px;"></td>
       <td style="background-image:url(images/presentation/cor_close.gif); background-repeat:no-repeat; padding:0px;" width="26px"></td>
       </tr></table>  
       </td>
       </cfoutput>
	   </cfif>
   <!--- END DYNAMIC MANAGEMENT ---->    
    
       <td style="padding:0;">  </td>
       </tr>
       
    <tr class="w3-bottombar w3-border-AGUAMAR">
      <th class="w3-left-align">ITEM</th>
      <th>Total Qty</th>
      
     <!--- DYNAMIC MANAGEMENT FOR THE NUMBER OF LABELS AND THE NAMES OF THE PLACES, NAME OF PLACE ---->
      <cfif arraylen(bizglo_places) gt 0>
         <cfoutput><cfloop index="i" from="1" to="#arrayLen(bizglo_places)#"> 
 <th class="w3-AMA0">#bizglo_places[i][1]#</th>
 </cfloop></cfoutput></cfif>
      
      <cfif arraylen(byuser_places) gt 0>
       <cfoutput><cfloop index="i" from="1" to="#arrayLen(byuser_places)#"> 
       <th>#byuser_places[i][1]#</th></cfloop></cfoutput></cfif>
      <th>Select</th>
    </tr>
    <!--- END DYNAMIC MANAGEMENT ---> 
    
   
    
   
   
    <!--- CAPSULE 2.
 INITIALIZATION OF ARRAYS 
 (TWO ARRAYS; ONE FOR BIZGLO PLACES, OTHER FOR BY_USER PLACES) TO AVOID CRASHES WITH SOME ARRAY LOCATIONS POTENTIALLY NON-EXISTENT AS SOME ITEMS ARE NOT PRESENT IN ALL WAREHOUSES---->
<cfscript>
bizglo_place = arraynew();
byuser_place = arraynew();
controlbp = 0;
controlbup =0;
last_id = 0;

 for (i = 1; i <= arrayLen(bizglo_places); i++)
 {bizglo_place[i]= 0;}
 
 for (i = 1; i <= arrayLen(byuser_places); i++)
 {byuser_place[i]= 0;}

</cfscript>
<!---SAME CODE IN CFNOTATION
cfloop index="iplacepop" from="1" to="#arrayLen(bizglo_places)#">
    <cfset bizglo_place[iplacepop] = 0>
    </cfloop--->
    
     <!---cfloop index="iplaceupop" from="1" to="#arrayLen(byuser_places)#">
    <cfset byuser_place[iplaceupop] = 0>
    </cfloop--->
 <!--- END CAPSULE 2.--->
 
 
   

 <!--- CAPSULE 3.
 LOOP THE QUERY RECORD COUNT TO CREATE EACH ONE OF THE ROWS, WHENEVER THE PRODUCT ID IS NEW, A ROW IS CREATED AND A NEW ONE BEGANS---->
 <cfloop index="iconsulta" from="1" to="#inventory.recordCount+1#">
 
 <cfif last_id eq #inventory.id[iconsulta]#>
 <!--- CAPSULE 4.
 THIS ONLY HAPPENS WHEN THE ID OF THE ITEM IS THE SAME AS LAST ONE, IT NEVER PROCESSES ON THE FIRST RECORD ---->
 	<cfif 0 == #inventory.LOC_TYPE[iconsulta]#>
    	<cfloop index="iplace2" from="1" to="#arrayLen(bizglo_places)#">
        	<cfif #bizglo_places[iplace2][2]# eq  #inventory.LOC_ID[iconsulta]#>
            <cfset bizglo_place[iplace2]= #inventory.LOC_QTY[iconsulta]#>
            </cfif>
    	</cfloop>
        
    <cfelse>
    	<cfloop index="iplaceu2" from="1" to="#arrayLen(byuser_places)#">
        <cfif #byuser_places[iplaceu2][2]# eq  #inventory.LOC_ID[iconsulta]#>
            <cfset byuser_place[iplaceu2]= #inventory.LOC_QTY[iconsulta]#>
            </cfif>
        </cfloop>
        
    </cfif>
     <!--- END CAPSULE 4.---->
 <cfelse>
 
  <!--- CAPSULE 5.
 THIS ONLY HAPPENS WHEN THE ID OF THE ITEM IS DIFFERENT AS THE LAST ONE, IT NEVER PROCESSES ON THE FIRST RECORD ---->
 <cfif last_id neq 0>
  <tr>
     <cfoutput>  <td class="w3-left-align"><div class="w3-block">#title#</div>
      <div class="w3-block">#price#</div></td>
      <td>#qty#</td></cfoutput>
      <cfloop index="index_ba" from="1" to="#arrayLen(bizglo_places)#"> 
 <td class="w3-AMA0">
		<cfoutput>#bizglo_place[index_ba]# </cfoutput>
		  </td>
 </cfloop> 
				 
		<cfloop index="index_bu" from="1" to="#arrayLen(byuser_places)#"> 
 <td>
		<cfoutput>#byuser_place[index_bu]#</cfoutput>
		  </td>
 </cfloop> 
 <td>
      <div class="w3-cell-row">
<div class="w3-cell" style="width:16%;"></div>
  <div class="w3-cell"> <input class="w3-check" type="checkbox">
  </div>
  <div class="w3-cell" style="width:30%;"></div>
   <div class="w3-cell"><input class="w3-inputbiz" type="input" style="width:28px;">
  </div>
  <div class="w3-cell" style="width:16%;">
  </div>
  </div>
     
     </td>
    </tr>
    
   <!---cfloop index="iplacepop" from="1" to="#arrayLen(bizglo_places)#">
    <cfset bizglo_place[iplacepop] = 0>
    </cfloop>
    
     <cfloop index="iplaceupop" from="1" to="#arrayLen(byuser_places)#">
    <cfset byuser_place[iplaceupop] = 0>
   
    </cfloop---->
    
    <!---INITIALIZATION OF ARRAYS, LIKE CAPSULE 2. ---->
    <cfscript>
     for (iplacepop = 1; iplacepop <= arrayLen(bizglo_places); iplacepop++)
 {bizglo_place[iplacepop]= 0;}
 
 for (iplacepopu = 1; iplacepopu <= arrayLen(byuser_places); iplacepopu++)
 {byuser_place[iplacepopu]= 0;}

</cfscript>
    
 </cfif>
 <!--- END INITIALIZATION OF ARRAYS--->
 <!--- END CAPSULE 5.--->
 	
    
  <!--- CAPSULE 6.
 WE POPULATE THE VARIABLES WITH THE PRODUCT INFORMATION, THIS PROCESSES ALWAYS WITH THE FIRST RECORD AND WHENEVER A NEW RECORD WITH A NEW ITEM ID COMES ---->
		<cfset title = #inventory.TITLE[iconsulta]#>
 		<cfset qty = #inventory.TOTAL_QTY[iconsulta]#>
 		<cfset price = #inventory.PRICE[iconsulta]#>
 <cfif 0 == #inventory.LOC_TYPE[iconsulta]#>
    	<cfloop index="iplace" from="1" to="#arrayLen(bizglo_places)#">
        
        	<cfif #bizglo_places[iplace][2]# eq  #inventory.LOC_ID[iconsulta]#>
            <cfset bizglo_place[iplace]= #inventory.LOC_QTY[iconsulta]#>
            
            </cfif>
    	</cfloop>
    <cfelse>
    
  <cfloop index="iplaceu3" from="1" to="#arrayLen(byuser_places)#">
           <cfif #byuser_places[iplaceu3][2]# eq  #inventory.LOC_ID[iconsulta]#>
            
            <cfset byuser_place[iplaceu3]= #inventory.LOC_QTY[iconsulta]#>
            </cfif>
        </cfloop>  
    	
    </cfif>
    <!---END CAPSULE 6.--->
 </cfif>
 <!--- WITH THIS VARIABLE WE CONTROL AND COMPARE THE ITEM ID OF THE LAST RECORD WITH THE ID OF A NEW ONE---->
   <cfset last_id = #inventory.ID[iconsulta]#>
   
   </cfloop>
   <!--- END CAPSULE 3.---->
   

  </table>
    </div>
</div>
<!---
<cfdump var="#bizglo_place#" label="Bizglo Place">
 <cfdump var="#byuser_place#" label="Byuser Place">
---->

