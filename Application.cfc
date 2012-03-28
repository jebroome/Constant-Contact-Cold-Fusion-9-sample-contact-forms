<cfcomponent displayname="Application" output="false">

<!--- Set application variables --->
<cffunction 
	name="onRequestStart" 
	output="false" 
	access="public" 
	hint="Sets application scope variables">
	
	<!--- Set Login Credentials --->
	<cflock scope="Application" timeout="10" type="exclusive">
		<cfset APPLICATION.ccUsername = "YOUR USERNAME"> 			<!--- Username for  your account --->
		<cfset APPLICATION.ccPassword = "YOUR PASSWORD">			<!--- Password for your account --->
		<cfset APPLICATION.apiKey = "YOUR APIKEY">					<!--- Api Key for your account --->
		
		<!--- Opt In Source (who is performing these actions?) --->
		<cfset APPLICATION.optInSource = "ACTION_BY_CUSTOMER">
			<!--- 
			ACTION_BY_CUSTOMER - Constant Contact account holder. Used in internal applications.
			ACTION_BY_CONTACT - Site visitor. Used in web site sign-up forms. 
			--->
	
<!--- Typical modifications end here --->
		<cfset APPLICATION.apiPath = "https://api.constantcontact.com/ws/customers/#APPLICATION.ccUsername#">
			<!--- apiPath - Used for server calls --->
		<cfset APPLICATION.doNotInclude = "Active,Do Not Mail,Removed">
			<!--- doNotInclude - Lists that should not be returned throughout the application --->
			
	</cflock>
</cffunction>

<!--- Function: doServerCall --->
<cffunction 
	name="doServerCall" 
	access="public" 
	output="false" 
	hint="HTTP Utility Function for all server calls"> 
	
	<cfargument 
		name="type" 
		required="true"
		type="string"
		hint="Type of request to make (ie: get, post, put, delete)">
	
	<cfargument 
		name="address" 
		required="true"
		type="string"
		hint="Address to call (ie: https://api.constantcontact.com/customers/{user-name}/)">
		
	<cfargument 
		name="requestValue"
		type="string"
		hint="XML for http request body">
	
	<cfset address=replace("#address#", "http://", "https://")>
	
	<cfhttp 
		url="#ARGUMENTS.address#" 
		method="#ARGUMENTS.type#" 
		username="#APPLICATION.apikey#%#APPLICATION.ccUsername#" 
		password="#APPLICATION.ccPassword#">
		
		<cfswitch expression="#ARGUMENTS.type#">
		<cfcase value="POST">
			<cfhttpparam type="header" name="Content-type" value="application/atom+xml" />
		    <cfhttpparam value="#ARGUMENTS.requestValue#" type="body" />
		</cfcase>
		<cfcase value="PUT">
			<cfhttpparam type="header" name="Content-type" value="application/atom+xml" />
		    <cfhttpparam value="#ARGUMENTS.requestValue#" type="body" />	
		</cfcase>
		<cfcase value="GET"></cfcase>
		<cfcase value="DELETE"></cfcase>
		</cfswitch>
	</cfhttp>
	
	<cfreturn cfhttp.filecontent> 
</cffunction>
</cfcomponent>