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
    catlevels[6] = 0;
    catlevels[7] = 0;
    catlevels[8] = 0;

    catnames = arraynew();
    catnames[1] = 0;
    catnames[2] = 0;
    catnames[3] = 0;
    catnames[4] = 0;
    catnames[5] = 0;
    catnames[6] = 0;
    catnames[7] = 0;
    catnames[8] = 0;

    catids = arraynew();
    catids[1] = 0;
    catids[2] = 0;
    catids[3] = 0;
    catids[4] = 0;
    catids[5] = 0;
    catids[6] = 0;
    catids[7] = 0;
    catids[8] = 0;

    pcatsid = arraynew();
    pastcat = 0;
    item = 0;
  </cfscript>
 
<cfoutput query="products">
<cfset TIMES = 0> 
<cfset catids[1] = products.CAT1>
  <cfset catids[2] = products.CAT2>
    <cfset catids[3] = products.CAT3>
      <cfset catids[4] = products.CAT4>
        <cfset catids[5] = products.CAT5>
          <cfset catids[6] = products.CAT6>
            <cfset catids[7] = products.CAT7>
<cfset catnames[1] = products.CAT1NAME>
  <cfset catnames[2] = products.CAT2NAME>
    <cfset catnames[3] = products.CAT3NAME>
      <cfset catnames[4] = products.CAT4NAME>
        <cfset catnames[5] = products.CAT5NAME>
          <cfset catnames[6] = products.CAT6NAME>
            <cfset catnames[7] = products.CAT7NAME>
<cfif item eq 1> <!---Necessary ---->
<cfif pastcat NOT EQUAL products.ID_CATEGORY></table></div>
<cfset catlvl = catlvl -1>
<cfloop index="i" from= #catlvl# to=1 step=-1>
<cfif #pcatsid[#i#]# NOT EQUAL #catids[#i#]#></div></cfif>
<cfif i eq 1>
</div>
</cfif>
</cfloop>

</cfif>
</cfif>

<cfinclude template="products_rec_all.cfm">
<cfset pastcat = products.ID_CATEGORY>
  <cfset catlvl = #times#>
    <cfloop index="i" from= #catlvl# to=1 step=-1>
      <cfset pcatsid[#i#] = catids[#i#]>
    </cfloop>

</cfoutput>
</table>

</div>
</div>