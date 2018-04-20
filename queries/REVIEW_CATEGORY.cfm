
<CFSTOREDPROC PROCEDURE="REVIEW_CATEGORY" DATASOURCE="bizglo">
   <cfprocparam type="in" cfsqltype="CF_SQL_INTEGER" variable="CATEGORYID" value="#url.categoryid#">
  <cfprocresult name="REVIEW_CATEGORY">
</CFSTOREDPROC>

<CFSTOREDPROC PROCEDURE="REVIEW_PRODUCTS" DATASOURCE="bizglo">
   <cfprocparam type="in" cfsqltype="CF_SQL_INTEGER" variable="CATEGORYID" value="#url.categoryid#">		
  <cfprocresult name="REVIEW_PRODUCTS">
</CFSTOREDPROC>


<cfif #REVIEW_CATEGORY.recordcount# EQ 0>
		<cfif #REVIEW_PRODUCTS.recordcount# EQ 0>
		1
		<cfelse>
		2
		</cfif>
<cfelse>
		<cfif #REVIEW_PRODUCTS.recordcount# EQ 0>
		3			
		<cfelse>
		4
		</cfif>
</cfif>
<!---
1. No errors.
2. Products referencing the category.
3. Subcategories referencing the category.
4. Products and categories referencing.
--->