<cfscript>
/*Array Creation for holding template info and settings*/	
stack = arraynew();
stackp= arraynew();

switch(url.view){
	case "dash_staff":	
		stack[1] = 'modules/html_doc.cfm';
		stack[2] = 'sidebar_central_1.cfm';
		stack[3] = 'staff/fill_sidebar_admin.cfm';
		stack[4] = 'empty'										/*Because fill_sidebar_admin.cfm does not call files, but may call parameters.*/ 
		stack[5] = 'twothird_third.cfm';
		stack[6] = 'admin_view.cfm';
		stack[7] = 'admin_right_section.cfm';

		stackp[1][1] = 'w3-AMA0';
		stackp[2][1]= '260px';													/*Sidebar width*/
		stackp[2][2]= '260px';													/*Main section left margin*/
		stackp[2][3]= 'w3-AZULPRO1';											/*Sidebar background color*/
		break;

	case "dash_user":	
		stack[1] = 'modules/html_doc.cfm';
		stack[2] = 'sidebar_central_1.cfm';
		stack[3] = 'user/fill_sidebar.cfm';
        stack[4] = 'empty'		
		stack[5] = 'twothird_third.cfm';
		stack[6] = 'admin_view.cfm';
		stack[7] = 'admin_right_section.cfm';

		stackp[1][1] = 'w3-AGUAMAR0';
		stackp[2][1]= '260px';
		stackp[2][2]= '260px';
		stackp[2][3]= 'w3-AZULPAR';
		break;

	case "staff_cat":	
	    stack[1] = 'modules/form.cfm';
		stack[2] = 'twothird_third_fixed.cfm';
		stack[3] = 'staff/fill_catview.cfm';
		stack[4] = 'staff/fill_catview_actions.cfm';

		stackp[1][1] = 'form_cat';
		break;

	case "inventory_user":	
		stack[1] = 'modules/full_main.cfm';
		stack[2] = 'user/fill_inventory.cfm';

		stackp[1][1] = 'form_cat';
		break;

	case "fill_catview":	
		stack[1] = 'modules/staff/fill_catview.cfm';
		break;
}
</cfscript>

<cfset stack_order = 1>
<!---cfdump var="#stack#" label="Stack"---->
<cfinclude template = "#stack[stack_order]#" runOnce = "true">
