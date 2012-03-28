<cfcomponent displayname="Lists" output="false" extends="Application">

<!--- Function: getLists --->
<cffunction 
	name="getLists" 
	output="false" 
	access="public" 
	hint="Get all lists available in the account">
	
	<cfset LOCAL.xmlContent = XmlParse(doServerCall("get", "#APPLICATION.apiPath#/lists"))>
	<cfset LOCAL.listArray = Arraynew(2)>	
	<cfset LOCAL.z = 1>
	<cfloop from="1" to="#ArrayLen(LOCAL.XMLContent.feed.entry)#" index="i">
			<cfif listFindNoCase(APPLICATION.doNotInclude, #LOCAL.XMLContent.feed.entry[i].title.XmlText#) is 0>
				<cfset LOCAL.listArray[LOCAL.z][1] = '#LOCAL.XMLContent.feed.entry[i].title.XmlText#'>
				<cfset LOCAL.listArray[LOCAL.z][2]= '#LOCAL.XMLContent.feed.entry[i].id.XmlText#'>
				<cfset LOCAL.z = LOCAL.z + 1>
			</cfif>
	</cfloop>
	
	<cfreturn LOCAL.listArray>
</cffunction>

<!--- Function: getSubscribedLists --->
<cffunction
	name="getSubscribedLists"
	output="false"
	access="public"
	hint="Get lists a contact is subscribed to">
	
	<cfargument
		name="contactId"
		required="true"
		/>
		
	<cfset LOCAL.contactInfo = XMLParse(doServerCall("get", ARGUMENTS.contactId))>
	
	<cfset LOCAL.subscribedLists = Arraynew(1)>
	<cfif isdefined('LOCAL.ContactInfo.entry.content.Contact.ContactLists.ContactList')>
		<cfloop from="1" to="#ArrayLen(LOCAL.ContactInfo.entry.content.Contact.ContactLists.ContactList)#" index="i">
			<cfset LOCAL.subscribedLists[i]= '#LOCAL.ContactInfo.entry.content.Contact.ContactLists.ContactList[i].XmlAttributes.id#'>
		</cfloop>
	</cfif>
	
	<cfreturn LOCAL.subscribedLists>
</cffunction>

</cfcomponent>