<cfinclude template="header.cfm" />
<cfinclude template="import.cfm" />

<!--- Submit Information --->
<cfif isdefined('submit')>

<!--- Create contact object --->
<cfset VARIABLES.newContact = createObject("component", "Contacts").createContactXml()>
		
<!--- Updates the basic XML retrieved through the createContactXml function with contact details from the form --->
	<cfset temp = StructUpdate(newContact.entry.content.Contact.EmailAddress, "xmlText", "#FORM.email#")>
	<cfset temp = StructUpdate(newContact.entry.content.Contact.FirstName, "xmlText", "#FORM.first#")>
	<cfset temp = StructUpdate(newContact.entry.content.Contact.LastName, "xmlText", "#FORM.last#")>
	<cfset temp = StructUpdate(newContact.entry.content.Contact.MiddleName, "xmlText", "#FORM.middle#")>
	<cfset temp = StructUpdate(newContact.entry.content.Contact.HomePhone, "xmlText", "#FORM.homephone#")>
	<cfset temp = StructUpdate(newContact.entry.content.Contact.Addr1, "xmlText", "#FORM.addr1#")>
	<cfset temp = StructUpdate(newContact.entry.content.Contact.Addr2, "xmlText", "#FORM.addr2#")>
	<cfset temp = StructUpdate(newContact.entry.content.Contact.Addr3, "xmlText", "#FORM.addr3#")>
	<cfset temp = StructUpdate(newContact.entry.content.Contact.City, "xmlText", "#FORM.city#")>
	<cfset temp = StructUpdate(newContact.entry.content.Contact.StateCode, "xmlText", "#FORM.state#")>
	<cfset temp = StructUpdate(newContact.entry.content.Contact.StateName, "xmlText", "#FORM.stateother#")>
	<cfset temp = StructUpdate(newContact.entry.content.Contact.PostalCode, "xmlText", "#FORM.zip#")>
	<cfset temp = StructUpdate(newContact.entry.content.Contact.SubPostalCode, "xmlText", "#FORM.subzip#")>
	<cfset contactLists = listtoarray(#FORM.lists#, ',', false) />
	
	<cfloop from="1" to="#ArrayLen(contactLists)#" index="i">
		<cfset ArrayAppend(newContact.entry.content.Contact.ContactLists.XmlChildren, XmlElemNew(newContact, "ContactList"))>
		<cfset StructInsert(newContact.entry.content.Contact.ContactLists.ContactList[i].XmlAttributes, "id", "#contactLists[i]#")>
	</cfloop>

<!--- Use addContact function to pass information to Constant Contact --->
<cfset httpResponse = createObject("component", "Contacts").addContact(newContact)>
	
	<div class="mainText">Contact <cfoutput>#FORM.email#</cfoutput> Added</div><br />

</cfif>

<!--- Get all available contact lists --->
<cfset listArray = createObject("component", "Lists").getLists()>

<!--- Simplified Form --->
<div class="mainText">Add a new Contact [Simplified Form]</div>
<cfoutput>
<cfform format="flash" width="600" action="" skin="haloBlue">
	<cfformgroup type="accordion" >
		<cfformgroup type="page" label="Basic Information">
			<cfformgroup type="horizontal">
				<cfinput type="text" name="email" label="Email" required="yes" validate="email" width="185">
			</cfformgroup>
			<cfformgroup type="horizontal">
				<cfinput name="first" type="text" label="First Name" width="158" />
				<cfinput name="last" type="text" label="Last Name" width="180" />
			</cfformgroup>
			<cfformgroup type="horizontal">
				<cfinput name="middle" type="text" label="Middle Name" width="145" />
				<cfinput name="homephone" type="text" label="Home Phone" width="168"/>
			</cfformgroup>
			<cfformgroup type="horizontal">
				<cfselect type="text" name="lists" size="5" width="400" multiple="true" label="Contact Lists" required="true">
				<cfloop from="1" to="#ArrayLen(ListArray)#" index="i"> 
					<option value="#ListArray[i][2]#">#ListArray[i][1]#</option value>
				</cfloop>
				</cfselect>
			</cfformgroup>
		</cfformgroup>
		<cfformgroup type="page" label="Details">
			<cfformgroup type="horizontal">
				<cfinput name="Addr1" type="text" label="Address 1" width="150" />
				<cfselect name="emailtype" label="Email Type" width="165">
	                <option value="HTML">HTML</option>
	                <option value="Text">Text</option>
            	</cfselect>
			</cfformgroup>
			<cfformgroup type="horizontal">
				<cfinput name="Addr2" type="text" label="Address 2" width="150" />
				<cfinput name="Addr3" type="text" label="Address 3" width="150" />
			</cfformgroup>
			<cfformgroup type="horizontal">
            <cfinput type="text" name="city" label="City" width="198" > 
            <cfselect name="state" label="State" width="205">
            	<option value=""></option>
            	<cfloop from="1" to="#ArrayLen(StatesArray)#" index="i">        
                <option value="#StatesArray[i][2]#">#StatesArray[i][1]#</option> 
                </cfloop>   
            </cfselect>
        </cfformgroup>
		        <cfformgroup type="horizontal">
            <cfinput type="text" name="zip" label="Zip" validate="zipcode" width="203">
            <cfinput type="text" name="stateother" label="State (Other)" width="160">
        </cfformgroup>
        <cfformgroup type="horizontal">
            <cfinput type="text" name="subzip" label="Sub-zip" width="180">
            <cfselect name="country" label="Country" width="190">
            	<option value=""></option>
            	<cfloop from="1" to="#ArrayLen(CountryArray)#" index="i">        
                <option value="#CountryArray[i][2]#">#CountryArray[i][1]#</option> 
                </cfloop>   
            </cfselect>
        </cfformgroup> 
		</cfformgroup>
	</cfformgroup>
	<cfinput type="submit" value="submit" name="submit">
</cfform>
</cfoutput>
            