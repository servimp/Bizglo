
<cfoutput>  
<cfif catids[#times#] EQ pastcat>		
          	<tr class="<cfif #products.quantity# eq 0>w3-text-GRIS2<cfelse>w3-text-AZULPRO</cfif> w3-cell-middle" style="border-bottom: 1px solid ##C8CED3">
          <td>
            #products.title#
          </td>
          <td>
            #products.quantity#
          </td>
          <td>
            Used in Good Condition, B Stock.
          </td>
          <td>
            10 Users, multi connection
          </td>
          <td>
              <div class="w3-dropdown-hover">
    <button class="w3-button w3-GRIS1 w3-round w3-text-AZULPAR" <cfif #products.quantity# eq 0>disabled</cfif>><span style="padding-left:2px;"><i class="fa fa-caret-down"></i></span>&nbsp;&nbsp;&nbsp;Actions</button>
    <div class="w3-dropdown-content w3-bar-block w3-card-2 w3-GRIS1">
      <a href="##" class="w3-bar-item w3-button w3-text-AZULPAR">View Identifiers</a>
      <a href="##" class="w3-bar-item w3-button w3-text-AZULPAR">View Historical</a>
      <a href="##" class="w3-bar-item w3-button w3-text-AZULPAR">Edit</a>
      <a href="##" class="w3-bar-item w3-button w3-text-AZULPAR">Offload Inventory</a>
      <a href="##" class="w3-bar-item w3-button w3-text-AZULPAR">Delete</a>
    </div>
  </div>
          </td>
        </tr>
          	<cfelse>
          		  <div style="padding: 8px; padding-top: 0px; padding-left: 2px;"><table class="w3-table w3-centered" style="border: 1px solid ##C8CED3; vertical-align: middle;">
        <tr class="w3-small w3-GRIS1" style="font-weight: bold; border-bottom: 1px solid ##C8CED3">
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
          		<tr class="<cfif #products.quantity# eq 0>w3-text-GRIS2<cfelse>w3-text-AZULPRO</cfif> w3-cell-middle" style="border-bottom: 1px solid ##C8CED3">
          <td>
            #products.title#
          </td>
          <td>
            #products.quantity#
          </td>
          <td>
            Used in Good Condition, B Stock.
          </td>
          <td>
            10 Users, multi connection
          </td>
          <td>
              <div class="w3-dropdown-hover">
    <button class="w3-button w3-GRIS1 w3-round w3-text-AZULPAR" <cfif #products.quantity# eq 0>disabled</cfif>><span style="padding-left:2px;"><i class="fa fa-caret-down"></i></span>&nbsp;&nbsp;&nbsp;Actions</button>
    <div class="w3-dropdown-content w3-bar-block w3-card-2 w3-GRIS1">
      <a href="##" class="w3-bar-item w3-button w3-text-AZULPAR">View Identifiers</a>
      <a href="##" class="w3-bar-item w3-button w3-text-AZULPAR">View Historical</a>
      <a href="##" class="w3-bar-item w3-button w3-text-AZULPAR">Edit</a>
      <a href="##" class="w3-bar-item w3-button w3-text-AZULPAR">Offload Inventory</a>
      <a href="##" class="w3-bar-item w3-button w3-text-AZULPAR">Delete</a>
    </div>
  </div>
          </td>
        </tr>
          	</cfif>
          </cfoutput>  