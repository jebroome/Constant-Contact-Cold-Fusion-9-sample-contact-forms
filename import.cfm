<!--- States Array --->
<cfset StatesArray = Arraynew(2)>
<cfset StatesArray[1][1] = 'Alabama'>
<cfset StatesArray[1][2]= 'AL'>
<cfset StatesArray[2][1] = 'Alaska'>
<cfset StatesArray[2][2]= 'AK'>
<cfset StatesArray[3][1] = 'Alberta'>
<cfset StatesArray[3][2]= 'AB'>
<cfset StatesArray[4][1] = 'Arizona'>
<cfset StatesArray[4][2]= 'AZ'>
<cfset StatesArray[5][1] = 'Arkansas'>
<cfset StatesArray[5][2]= 'AR'>
<cfset StatesArray[6][1] = 'Armed Forces Americas'>
<cfset StatesArray[6][2]= 'AA'>
<cfset StatesArray[7][1] = 'Armed Forces Europe'>
<cfset StatesArray[7][2]= 'AE'>
<cfset StatesArray[8][1] = 'Armed Forces Pacific'>
<cfset StatesArray[8][2]= 'AP'>
<cfset StatesArray[9][1] = 'British Columbia'>
<cfset StatesArray[9][2]= 'BC'>
<cfset StatesArray[10][1] = 'California'>
<cfset StatesArray[10][2]= 'CA'>
<cfset StatesArray[11][1] = 'Colorado'>
<cfset StatesArray[11][2]= 'CO'>
<cfset StatesArray[12][1] = 'Connecticut'>
<cfset StatesArray[12][2]= 'CT'>
<cfset StatesArray[13][1] = 'Delaware'>
<cfset StatesArray[13][2]= 'DE'>
<cfset StatesArray[14][1] = 'District of Columbia'>
<cfset StatesArray[14][2]= 'DC'>
<cfset StatesArray[15][1] = 'Florida'>
<cfset StatesArray[15][2]= 'FL'>
<cfset StatesArray[16][1] = 'Georgia'>
<cfset StatesArray[16][2]= 'GA'>
<cfset StatesArray[17][1] = 'Hawaii'>
<cfset StatesArray[17][2]= 'HI'>
<cfset StatesArray[18][1] = 'Idaho'>
<cfset StatesArray[18][2]= 'ID'>
<cfset StatesArray[19][1] = 'Illinois'>
<cfset StatesArray[19][2]= 'IL'>
<cfset StatesArray[20][1] = 'Indiana'>
<cfset StatesArray[20][2]= 'IN'>
<cfset StatesArray[21][1] = 'Iowa'>
<cfset StatesArray[21][2]= 'IA'>
<cfset StatesArray[22][1] = 'Kansas'>
<cfset StatesArray[22][2]= 'KS'>
<cfset StatesArray[23][1] = 'Kentucky'>
<cfset StatesArray[23][2]= 'KY'>
<cfset StatesArray[24][1] = 'Louisiana'>
<cfset StatesArray[24][2]= 'LA'>
<cfset StatesArray[25][1] = 'Maine'>
<cfset StatesArray[25][2]= 'ME'>
<cfset StatesArray[26][1] = 'Manitoba'>
<cfset StatesArray[26][2]= 'MB'>
<cfset StatesArray[27][1] = 'Maryland'>
<cfset StatesArray[27][2]= 'MD'>
<cfset StatesArray[28][1] = 'Massachusetts'>
<cfset StatesArray[28][2]= 'MA'>
<cfset StatesArray[29][1] = 'Michigan'>
<cfset StatesArray[29][2]= 'MI'>
<cfset StatesArray[30][1] = 'Minnesota'>
<cfset StatesArray[30][2]= 'MN'>
<cfset StatesArray[31][1] = 'Mississippi'>
<cfset StatesArray[31][2]= 'MS'>
<cfset StatesArray[32][1] = 'Missouri'>
<cfset StatesArray[32][2]= 'MO'>
<cfset StatesArray[33][1] = 'Montana'>
<cfset StatesArray[33][2]= 'MT'>
<cfset StatesArray[34][1] = 'Nebraska'>
<cfset StatesArray[34][2]= 'NE'>
<cfset StatesArray[35][1] = 'Nevada'>
<cfset StatesArray[35][2]= 'NV'>
<cfset StatesArray[36][1] = 'New Brunswick'>
<cfset StatesArray[36][2]= 'NB'>
<cfset StatesArray[37][1] = 'New Hampshire'>
<cfset StatesArray[37][2]= 'NH'>
<cfset StatesArray[38][1] = 'New Jersey'>
<cfset StatesArray[38][2]= 'NJ'>
<cfset StatesArray[39][1] = 'New Mexico'>
<cfset StatesArray[39][2]= 'NM'>
<cfset StatesArray[40][1] = 'New York'>
<cfset StatesArray[40][2]= 'NY'>
<cfset StatesArray[41][1] = 'Newfoundland and Labrador'>
<cfset StatesArray[41][2]= 'NL'>
<cfset StatesArray[42][1] = 'North Carolina'>
<cfset StatesArray[42][2]= 'NC'>
<cfset StatesArray[43][1] = 'North Dakota'>
<cfset StatesArray[43][2]= 'ND'>
<cfset StatesArray[44][1] = 'Northwest Territories'>
<cfset StatesArray[44][2]= 'NT'>
<cfset StatesArray[45][1] = 'Nova Scotia'>
<cfset StatesArray[45][2]= 'NS'>
<cfset StatesArray[46][1] = 'Nunavut'>
<cfset StatesArray[46][2]= 'NU'>
<cfset StatesArray[47][1] = 'Ohio'>
<cfset StatesArray[47][2]= 'OH'>
<cfset StatesArray[48][1] = 'Oklahoma'>
<cfset StatesArray[48][2]= 'OK'>
<cfset StatesArray[49][1] = 'Ontario'>
<cfset StatesArray[49][2]= 'ON'>
<cfset StatesArray[50][1] = 'Oregon'>
<cfset StatesArray[50][2]= 'OR'>
<cfset StatesArray[51][1] = 'Pennsylvania'>
<cfset StatesArray[51][2]= 'PA'>
<cfset StatesArray[52][1] = 'Prince Edward Island'>
<cfset StatesArray[52][2]= 'PE'>
<cfset StatesArray[53][1] = 'Quebec'>
<cfset StatesArray[53][2]= 'QC'>
<cfset StatesArray[54][1] = 'Rhode Island'>
<cfset StatesArray[54][2]= 'RI'>
<cfset StatesArray[55][1] = 'Saskatchewan'>
<cfset StatesArray[55][2]= 'SK'>
<cfset StatesArray[56][1] = 'South Carolina'>
<cfset StatesArray[56][2]= 'SC'>
<cfset StatesArray[57][1] = 'South Dakota'>
<cfset StatesArray[57][2]= 'SD'>
<cfset StatesArray[58][1] = 'Tennessee'>
<cfset StatesArray[58][2]= 'TN'>
<cfset StatesArray[59][1] = 'Texas'>
<cfset StatesArray[59][2]= 'TX'>
<cfset StatesArray[60][1] = 'Utah'>
<cfset StatesArray[60][2]= 'UT'>
<cfset StatesArray[61][1] = 'Vermont'>
<cfset StatesArray[61][2]= 'VT'>
<cfset StatesArray[62][1] = 'Virginia'>
<cfset StatesArray[62][2]= 'VA'>
<cfset StatesArray[63][1] = 'Washington'>
<cfset StatesArray[63][2]= 'WA'>
<cfset StatesArray[64][1] = 'West Virginia'>
<cfset StatesArray[64][2]= 'WV'>
<cfset StatesArray[65][1] = 'Wisconsin'>
<cfset StatesArray[65][2]= 'WI'>
<cfset StatesArray[66][1] = 'Wyoming '>
<cfset StatesArray[66][2]= 'WY'>
<cfset StatesArray[67][1] = 'Yukon Territory'>
<cfset StatesArray[67][2]= 'YT'>

<!--- Country Array --->
<cfset CountryArray = Arraynew(2)>
<cfset CountryArray[1][1]='Afghanistan'>
<cfset CountryArray[1][2]='af'>
<cfset CountryArray[2][1]='Aland Islands'>
<cfset CountryArray[2][2]='ax'>
<cfset CountryArray[3][1]='Albania'>
<cfset CountryArray[3][2]='al'>
<cfset CountryArray[4][1]='Algeria'>
<cfset CountryArray[4][2]='dz'>
<cfset CountryArray[5][1]='American Samoa'>
<cfset CountryArray[5][2]='as'>
<cfset CountryArray[6][1]='Andorra'>
<cfset CountryArray[6][2]='ad'>
<cfset CountryArray[7][1]='Angola'>
<cfset CountryArray[7][2]='ao'>
<cfset CountryArray[8][1]='Anguilla'>
<cfset CountryArray[8][2]='ai'>
<cfset CountryArray[9][1]='Antarctica'>
<cfset CountryArray[9][2]='aq'>
<cfset CountryArray[10][1]='Antigua and Barbuda'>
<cfset CountryArray[10][2]='ag'>
<cfset CountryArray[11][1]='Argentina'>
<cfset CountryArray[11][2]='ar'>
<cfset CountryArray[12][1]='Armenia'>
<cfset CountryArray[12][2]='am'>
<cfset CountryArray[13][1]='Aruba'>
<cfset CountryArray[13][2]='aw'>
<cfset CountryArray[14][1]='Australia'>
<cfset CountryArray[14][2]='au'>
<cfset CountryArray[15][1]='Austria'>
<cfset CountryArray[15][2]='at'>
<cfset CountryArray[16][1]='Azerbaijan'>
<cfset CountryArray[16][2]='az'>
<cfset CountryArray[17][1]='Bahamas'>
<cfset CountryArray[17][2]='bs'>
<cfset CountryArray[18][1]='Bahrain'>
<cfset CountryArray[18][2]='bh'>
<cfset CountryArray[19][1]='Bangladesh'>
<cfset CountryArray[19][2]='bd'>
<cfset CountryArray[20][1]='Barbados'>
<cfset CountryArray[20][2]='bb'>
<cfset CountryArray[21][1]='Belarus'>
<cfset CountryArray[21][2]='by'>
<cfset CountryArray[22][1]='Belgium'>
<cfset CountryArray[22][2]='be'>
<cfset CountryArray[23][1]='Belize'>
<cfset CountryArray[23][2]='bz'>
<cfset CountryArray[24][1]='Benin'>
<cfset CountryArray[24][2]='bj'>
<cfset CountryArray[25][1]='Bermuda'>
<cfset CountryArray[25][2]='bm'>
<cfset CountryArray[26][1]='Bhutan'>
<cfset CountryArray[26][2]='bt'>
<cfset CountryArray[27][1]='Bolivia'>
<cfset CountryArray[27][2]='bo'>
<cfset CountryArray[28][1]='Bosnia and Herzegovina'>
<cfset CountryArray[28][2]='ba'>
<cfset CountryArray[29][1]='Botswana'>
<cfset CountryArray[29][2]='bw'>
<cfset CountryArray[30][1]='Bouvet Island'>
<cfset CountryArray[30][2]='bv'>
<cfset CountryArray[31][1]='Brazil'>
<cfset CountryArray[31][2]='br'>
<cfset CountryArray[32][1]='British Indian Ocean Territory'>
<cfset CountryArray[32][2]='io'>
<cfset CountryArray[33][1]='Brunei Darussalam'>
<cfset CountryArray[33][2]='bn'>
<cfset CountryArray[34][1]='Bulgaria'>
<cfset CountryArray[34][2]='bg'>
<cfset CountryArray[35][1]='Burkina Faso'>
<cfset CountryArray[35][2]='bf'>
<cfset CountryArray[36][1]='Burundi'>
<cfset CountryArray[36][2]='bi'>
<cfset CountryArray[37][1]='Cambodia'>
<cfset CountryArray[37][2]='kh'>
<cfset CountryArray[38][1]='Cameroon'>
<cfset CountryArray[38][2]='cm'>
<cfset CountryArray[39][1]='Canada'>
<cfset CountryArray[39][2]='ca'>
<cfset CountryArray[40][1]='Cape Verde'>
<cfset CountryArray[40][2]='cv'>
<cfset CountryArray[41][1]='Cayman Islands'>
<cfset CountryArray[41][2]='ky'>
<cfset CountryArray[42][1]='Central African Republic'>
<cfset CountryArray[42][2]='cf'>
<cfset CountryArray[43][1]='Chad'>
<cfset CountryArray[43][2]='td'>
<cfset CountryArray[44][1]='Chile'>
<cfset CountryArray[44][2]='cl'>
<cfset CountryArray[45][1]='China'>
<cfset CountryArray[45][2]='cn'>
<cfset CountryArray[46][1]='Christmas Island'>
<cfset CountryArray[46][2]='cx'>
<cfset CountryArray[47][1]='Cocos (Keeling) Islands'>
<cfset CountryArray[47][2]='cc'>
<cfset CountryArray[48][1]='Colombia'>
<cfset CountryArray[48][2]='co'>
<cfset CountryArray[49][1]='Comoros'>
<cfset CountryArray[49][2]='km'>
<cfset CountryArray[50][1]='Congo'>
<cfset CountryArray[50][2]='cg'>
<cfset CountryArray[51][1]='Congo, Democratic Republic of'>
<cfset CountryArray[51][2]='cd'>
<cfset CountryArray[52][1]='Cook Islands'>
<cfset CountryArray[52][2]='ck'>
<cfset CountryArray[53][1]='Costa Rica'>
<cfset CountryArray[53][2]='cr'>
<cfset CountryArray[54][1]='Cote D''IvoireIvoire'>
<cfset CountryArray[54][2]='ci'>
<cfset CountryArray[55][1]='Croatia'>
<cfset CountryArray[55][2]='hr'>
<cfset CountryArray[56][1]='Cyprus'>
<cfset CountryArray[56][2]='cy'>
<cfset CountryArray[57][1]='Czech Republic'>
<cfset CountryArray[57][2]='cz'>
<cfset CountryArray[58][1]='Denmark'>
<cfset CountryArray[58][2]='dk'>
<cfset CountryArray[59][1]='Djibouti'>
<cfset CountryArray[59][2]='dj'>
<cfset CountryArray[60][1]='Dominica'>
<cfset CountryArray[60][2]='dm'>
<cfset CountryArray[61][1]='Dominican Republic'>
<cfset CountryArray[61][2]='do'>
<cfset CountryArray[62][1]='East Timor'>
<cfset CountryArray[62][2]='tmp'>
<cfset CountryArray[63][1]='Ecuador'>
<cfset CountryArray[63][2]='ec'>
<cfset CountryArray[64][1]='Egypt'>
<cfset CountryArray[64][2]='eg'>
<cfset CountryArray[65][1]='El Salvador'>
<cfset CountryArray[65][2]='sv'>
<cfset CountryArray[66][1]='England'>
<cfset CountryArray[66][2]='eng'>
<cfset CountryArray[67][1]='Equatorial Guinea'>
<cfset CountryArray[67][2]='gq'>
<cfset CountryArray[68][1]='Eritrea'>
<cfset CountryArray[68][2]='er'>
<cfset CountryArray[69][1]='Estonia'>
<cfset CountryArray[69][2]='ee'>
<cfset CountryArray[70][1]='Ethiopia'>
<cfset CountryArray[70][2]='et'>
<cfset CountryArray[71][1]='Faroe Islands'>
<cfset CountryArray[71][2]='fo'>
<cfset CountryArray[72][1]='Faukland Islands'>
<cfset CountryArray[72][2]='fk'>
<cfset CountryArray[73][1]='Fiji'>
<cfset CountryArray[73][2]='fj'>
<cfset CountryArray[74][1]='Finland'>
<cfset CountryArray[74][2]='fi'>
<cfset CountryArray[75][1]='France'>
<cfset CountryArray[75][2]='fr'>
<cfset CountryArray[76][1]='French Guyana'>
<cfset CountryArray[76][2]='gf'>
<cfset CountryArray[77][1]='French Polynesia'>
<cfset CountryArray[77][2]='pf'>
<cfset CountryArray[78][1]='French Southern Territories'>
<cfset CountryArray[78][2]='tf'>
<cfset CountryArray[79][1]='Gabon'>
<cfset CountryArray[79][2]='ga'>
<cfset CountryArray[80][1]='Gambia'>
<cfset CountryArray[80][2]='gm'>
<cfset CountryArray[81][1]='Georgia'>
<cfset CountryArray[81][2]='ge'>
<cfset CountryArray[82][1]='Germany'>
<cfset CountryArray[82][2]='de'>
<cfset CountryArray[83][1]='Ghana'>
<cfset CountryArray[83][2]='gh'>
<cfset CountryArray[84][1]='Gibraltar'>
<cfset CountryArray[84][2]='gi'>
<cfset CountryArray[85][1]='Greece'>
<cfset CountryArray[85][2]='gr'>
<cfset CountryArray[86][1]='Greenland'>
<cfset CountryArray[86][2]='gl'>
<cfset CountryArray[87][1]='Grenada'>
<cfset CountryArray[87][2]='gd'>
<cfset CountryArray[88][1]='Guadeloupe'>
<cfset CountryArray[88][2]='gp'>
<cfset CountryArray[89][1]='Guam'>
<cfset CountryArray[89][2]='gu'>
<cfset CountryArray[90][1]='Guatemala'>
<cfset CountryArray[90][2]='gt'>
<cfset CountryArray[91][1]='Guernsey'>
<cfset CountryArray[91][2]='gg'>
<cfset CountryArray[92][1]='Guinea'>
<cfset CountryArray[92][2]='gn'>
<cfset CountryArray[93][1]='Guinea-Bissau'>
<cfset CountryArray[93][2]='gw'>
<cfset CountryArray[94][1]='Guyana'>
<cfset CountryArray[94][2]='gy'>
<cfset CountryArray[95][1]='Haiti'>
<cfset CountryArray[95][2]='ht'>
<cfset CountryArray[96][1]='Heard and McDonald Islands'>
<cfset CountryArray[96][2]='hm'>
<cfset CountryArray[97][1]='Honduras'>
<cfset CountryArray[97][2]='hn'>
<cfset CountryArray[98][1]='Hong Kong'>
<cfset CountryArray[98][2]='hk'>
<cfset CountryArray[99][1]='Hungary'>
<cfset CountryArray[99][2]='hu'>
<cfset CountryArray[100][1]='Iceland'>
<cfset CountryArray[100][2]='is'>
<cfset CountryArray[101][1]='India'>
<cfset CountryArray[101][2]='in'>
<cfset CountryArray[102][1]='Indonesia'>
<cfset CountryArray[102][2]='id'>
<cfset CountryArray[103][1]='Iraq'>
<cfset CountryArray[103][2]='iq'>
<cfset CountryArray[104][1]='Ireland'>
<cfset CountryArray[104][2]='ie'>
<cfset CountryArray[105][1]='Isle of Man'>
<cfset CountryArray[105][2]='im'>
<cfset CountryArray[106][1]='Israel'>
<cfset CountryArray[106][2]='il'>
<cfset CountryArray[107][1]='Italy'>
<cfset CountryArray[107][2]='it'>
<cfset CountryArray[108][1]='Jamaica'>
<cfset CountryArray[108][2]='jm'>
<cfset CountryArray[109][1]='Japan'>
<cfset CountryArray[109][2]='jp'>
<cfset CountryArray[110][1]='Jersey'>
<cfset CountryArray[110][2]='je'>
<cfset CountryArray[111][1]='Jordan'>
<cfset CountryArray[111][2]='jo'>
<cfset CountryArray[112][1]='Kazakhstan'>
<cfset CountryArray[112][2]='kz'>
<cfset CountryArray[113][1]='Kenya'>
<cfset CountryArray[113][2]='ke'>
<cfset CountryArray[114][1]='Kiribati'>
<cfset CountryArray[114][2]='ki'>
<cfset CountryArray[115][1]='Kuwait'>
<cfset CountryArray[115][2]='kw'>
<cfset CountryArray[116][1]='Kyrgyzstan'>
<cfset CountryArray[116][2]='kg'>
<cfset CountryArray[117][1]='Laos'>
<cfset CountryArray[117][2]='la'>
<cfset CountryArray[118][1]='Latvia'>
<cfset CountryArray[118][2]='lv'>
<cfset CountryArray[119][1]='Lebanon'>
<cfset CountryArray[119][2]='lb'>
<cfset CountryArray[120][1]='Lesotho'>
<cfset CountryArray[120][2]='ls'>
<cfset CountryArray[121][1]='Liberia'>
<cfset CountryArray[121][2]='lr'>
<cfset CountryArray[122][1]='Libya'>
<cfset CountryArray[122][2]='ly'>
<cfset CountryArray[123][1]='Liechtenstein'>
<cfset CountryArray[123][2]='li'>
<cfset CountryArray[124][1]='Lithuania'>
<cfset CountryArray[124][2]='lt'>
<cfset CountryArray[125][1]='Luxembourg'>
<cfset CountryArray[125][2]='lu'>
<cfset CountryArray[126][1]='Macao'>
<cfset CountryArray[126][2]='mo'>
<cfset CountryArray[127][1]='Macedonia'>
<cfset CountryArray[127][2]='mk'>
<cfset CountryArray[128][1]='Madagascar'>
<cfset CountryArray[128][2]='mg'>
<cfset CountryArray[129][1]='Malawi'>
<cfset CountryArray[129][2]='mw'>
<cfset CountryArray[130][1]='Malaysia'>
<cfset CountryArray[130][2]='my'>
<cfset CountryArray[131][1]='Maldives'>
<cfset CountryArray[131][2]='mv'>
<cfset CountryArray[132][1]='Mali'>
<cfset CountryArray[132][2]='ml'>
<cfset CountryArray[133][1]='Malta'>
<cfset CountryArray[133][2]='mt'>
<cfset CountryArray[134][1]='Marshall Islands'>
<cfset CountryArray[134][2]='mh'>
<cfset CountryArray[135][1]='Martinique'>
<cfset CountryArray[135][2]='mq'>
<cfset CountryArray[136][1]='Mauritania'>
<cfset CountryArray[136][2]='mr'>
<cfset CountryArray[137][1]='Mauritius'>
<cfset CountryArray[137][2]='mu'>
<cfset CountryArray[138][1]='Mayotte'>
<cfset CountryArray[138][2]='yt'>
<cfset CountryArray[139][1]='Mexico'>
<cfset CountryArray[139][2]='mx'>
<cfset CountryArray[140][1]='Micronesia'>
<cfset CountryArray[140][2]='fm'>
<cfset CountryArray[141][1]='Moldova'>
<cfset CountryArray[141][2]='md'>
<cfset CountryArray[142][1]='Monaco'>
<cfset CountryArray[142][2]='mc'>
<cfset CountryArray[143][1]='Mongolia'>
<cfset CountryArray[143][2]='mn'>
<cfset CountryArray[144][1]='Montenegro'>
<cfset CountryArray[144][2]='me'>
<cfset CountryArray[145][1]='Montserrat'>
<cfset CountryArray[145][2]='ms'>
<cfset CountryArray[146][1]='Morocco'>
<cfset CountryArray[146][2]='ma'>
<cfset CountryArray[147][1]='Mozambique'>
<cfset CountryArray[147][2]='mz'>
<cfset CountryArray[148][1]='Myanmar'>
<cfset CountryArray[148][2]='mm'>
<cfset CountryArray[149][1]='Namibia'>
<cfset CountryArray[149][2]='na'>
<cfset CountryArray[150][1]='Nauru'>
<cfset CountryArray[150][2]='nr'>
<cfset CountryArray[151][1]='Nepal'>
<cfset CountryArray[151][2]='np'>
<cfset CountryArray[152][1]='Netherlands'>
<cfset CountryArray[152][2]='nl'>
<cfset CountryArray[153][1]='Netherlands Antilles'>
<cfset CountryArray[153][2]='an'>
<cfset CountryArray[154][1]='New Caledonia'>
<cfset CountryArray[154][2]='nc'>
<cfset CountryArray[155][1]='New Zealand'>
<cfset CountryArray[155][2]='nz'>
<cfset CountryArray[156][1]='Nicaragua'>
<cfset CountryArray[156][2]='ni'>
<cfset CountryArray[157][1]='Niger'>
<cfset CountryArray[157][2]='ne'>
<cfset CountryArray[158][1]='Nigeria'>
<cfset CountryArray[158][2]='ng'>
<cfset CountryArray[159][1]='Niue'>
<cfset CountryArray[159][2]='nu'>
<cfset CountryArray[160][1]='Norfolk Island'>
<cfset CountryArray[160][2]='nf'>
<cfset CountryArray[161][1]='Northern Ireland'>
<cfset CountryArray[161][2]='nir'>
<cfset CountryArray[162][1]='Northern Mariana Islands'>
<cfset CountryArray[162][2]='mp'>
<cfset CountryArray[163][1]='Norway'>
<cfset CountryArray[163][2]='no'>
<cfset CountryArray[164][1]='Oman'>
<cfset CountryArray[164][2]='om'>
<cfset CountryArray[165][1]='Pakistan'>
<cfset CountryArray[165][2]='pk'>
<cfset CountryArray[166][1]='Palau'>
<cfset CountryArray[166][2]='pw'>
<cfset CountryArray[167][1]='Palestinian Territory, Occupied'>
<cfset CountryArray[167][2]='ps'>
<cfset CountryArray[168][1]='Panama'>
<cfset CountryArray[168][2]='pa'>
<cfset CountryArray[169][1]='Papua New Guinea'>
<cfset CountryArray[169][2]='pg'>
<cfset CountryArray[170][1]='Paraguay'>
<cfset CountryArray[170][2]='py'>
<cfset CountryArray[171][1]='Peru'>
<cfset CountryArray[171][2]='pe'>
<cfset CountryArray[172][1]='Philippines'>
<cfset CountryArray[172][2]='ph'>
<cfset CountryArray[173][1]='Pitcairn'>
<cfset CountryArray[173][2]='pn'>
<cfset CountryArray[174][1]='Poland'>
<cfset CountryArray[174][2]='pl'>
<cfset CountryArray[175][1]='Portugal'>
<cfset CountryArray[175][2]='pt'>
<cfset CountryArray[176][1]='Puerto Rico'>
<cfset CountryArray[176][2]='pr'>
<cfset CountryArray[177][1]='Qatar'>
<cfset CountryArray[177][2]='qa'>
<cfset CountryArray[178][1]='Reunion'>
<cfset CountryArray[178][2]='re'>
<cfset CountryArray[179][1]='Romania'>
<cfset CountryArray[179][2]='ro'>
<cfset CountryArray[180][1]='Russian Federation'>
<cfset CountryArray[180][2]='ru'>
<cfset CountryArray[181][1]='Rwanda'>
<cfset CountryArray[181][2]='rw'>
<cfset CountryArray[182][1]='Saint Barthelemy'>
<cfset CountryArray[182][2]='bl'>
<cfset CountryArray[183][1]='Saint Helena'>
<cfset CountryArray[183][2]='sh'>
<cfset CountryArray[184][1]='Saint Kitts and Nevis'>
<cfset CountryArray[184][2]='kn'>
<cfset CountryArray[185][1]='Saint Lucia'>
<cfset CountryArray[185][2]='lc'>
<cfset CountryArray[186][1]='Saint Martin'>
<cfset CountryArray[186][2]='mf'>
<cfset CountryArray[187][1]='Saint Pierre and Miquelon'>
<cfset CountryArray[187][2]='pm'>
<cfset CountryArray[188][1]='Saint Vincent & the Grenadines'>
<cfset CountryArray[188][2]='vc'>
<cfset CountryArray[189][1]='Samoa'>
<cfset CountryArray[189][2]='ws'>
<cfset CountryArray[190][1]='San Marino'>
<cfset CountryArray[190][2]='sm'>
<cfset CountryArray[191][1]='Sao Tome and Principe'>
<cfset CountryArray[191][2]='st'>
<cfset CountryArray[192][1]='Saudi Arabia'>
<cfset CountryArray[192][2]='sa'>
<cfset CountryArray[193][1]='Scotland'>
<cfset CountryArray[193][2]='sct'>
<cfset CountryArray[194][1]='Senegal'>
<cfset CountryArray[194][2]='sn'>
<cfset CountryArray[195][1]='Serbia'>
<cfset CountryArray[195][2]='rs'>
<cfset CountryArray[196][1]='Seychelles'>
<cfset CountryArray[196][2]='sc'>
<cfset CountryArray[197][1]='Sierra Leone'>
<cfset CountryArray[197][2]='sl'>
<cfset CountryArray[198][1]='Singapore'>
<cfset CountryArray[198][2]='sg'>
<cfset CountryArray[199][1]='Slovakia'>
<cfset CountryArray[199][2]='sk'>
<cfset CountryArray[200][1]='Slovenia'>
<cfset CountryArray[200][2]='si'>
<cfset CountryArray[201][1]='Solomon Islands'>
<cfset CountryArray[201][2]='sb'>
<cfset CountryArray[202][1]='Somalia'>
<cfset CountryArray[202][2]='so'>
<cfset CountryArray[203][1]='South Africa'>
<cfset CountryArray[203][2]='za'>
<cfset CountryArray[204][1]='South Georgia & S. Sandwich Is.'>
<cfset CountryArray[204][2]='gs'>
<cfset CountryArray[205][1]='South Korea'>
<cfset CountryArray[205][2]='kr'>
<cfset CountryArray[206][1]='Spain'>
<cfset CountryArray[206][2]='es'>
<cfset CountryArray[207][1]='Sri Lanka'>
<cfset CountryArray[207][2]='lk'>
<cfset CountryArray[208][1]='Suriname'>
<cfset CountryArray[208][2]='sr'>
<cfset CountryArray[209][1]='Svalbard and Jan Mayen'>
<cfset CountryArray[209][2]='sj'>
<cfset CountryArray[210][1]='Swaziland'>
<cfset CountryArray[210][2]='sz'>
<cfset CountryArray[211][1]='Sweden'>
<cfset CountryArray[211][2]='se'>
<cfset CountryArray[212][1]='Switzerland'>
<cfset CountryArray[212][2]='ch'>
<cfset CountryArray[213][1]='Taiwan'>
<cfset CountryArray[213][2]='tw'>
<cfset CountryArray[214][1]='Tajikistan'>
<cfset CountryArray[214][2]='tj'>
<cfset CountryArray[215][1]='Tanzania'>
<cfset CountryArray[215][2]='tz'>
<cfset CountryArray[216][1]='Thailand'>
<cfset CountryArray[216][2]='th'>
<cfset CountryArray[217][1]='Togo'>
<cfset CountryArray[217][2]='tg'>
<cfset CountryArray[218][1]='Tokelau'>
<cfset CountryArray[218][2]='tk'>
<cfset CountryArray[219][1]='Tonga'>
<cfset CountryArray[219][2]='to'>
<cfset CountryArray[220][1]='Trinidad and Tobago'>
<cfset CountryArray[220][2]='tt'>
<cfset CountryArray[221][1]='Tunisia'>
<cfset CountryArray[221][2]='tn'>
<cfset CountryArray[222][1]='Turkey'>
<cfset CountryArray[222][2]='tr'>
<cfset CountryArray[223][1]='Turkmenistan'>
<cfset CountryArray[223][2]='tm'>
<cfset CountryArray[224][1]='Turks and Caicos Islands'>
<cfset CountryArray[224][2]='tc'>
<cfset CountryArray[225][1]='Tuvalu'>
<cfset CountryArray[225][2]='tv'>
<cfset CountryArray[226][1]='Uganda'>
<cfset CountryArray[226][2]='ug'>
<cfset CountryArray[227][1]='Ukraine'>
<cfset CountryArray[227][2]='ua'>
<cfset CountryArray[228][1]='United Arab Emirates'>
<cfset CountryArray[228][2]='ae'>
<cfset CountryArray[229][1]='United Kingdom'>
<cfset CountryArray[229][2]='gb'>
<cfset CountryArray[230][1]='United States'>
<cfset CountryArray[230][2]='us'>
<cfset CountryArray[231][1]='United States Minor Outlying Is.'>
<cfset CountryArray[231][2]='um'>
<cfset CountryArray[232][1]='Uruguay'>
<cfset CountryArray[232][2]='uy'>
<cfset CountryArray[233][1]='Uzbekistan'>
<cfset CountryArray[233][2]='uz'>
<cfset CountryArray[234][1]='Vanuatu'>
<cfset CountryArray[234][2]='vu'>
<cfset CountryArray[235][1]='Vatican City State'>
<cfset CountryArray[235][2]='va'>
<cfset CountryArray[236][1]='Venezuela'>
<cfset CountryArray[236][2]='ve'>
<cfset CountryArray[237][1]='Viet Nam'>
<cfset CountryArray[237][2]='vn'>
<cfset CountryArray[238][1]='Virgin Islands, British'>
<cfset CountryArray[238][2]='vg'>
<cfset CountryArray[239][1]='Virgin Islands, U.S.'>
<cfset CountryArray[239][2]='vi'>
<cfset CountryArray[240][1]='Wallis and Futuna'>
<cfset CountryArray[240][2]='wf'>
<cfset CountryArray[241][1]='Western Sahara'>
<cfset CountryArray[241][2]='eh'>
<cfset CountryArray[242][1]='Yemen'>
<cfset CountryArray[242][2]='ye'>
<cfset CountryArray[243][1]='Zambia'>
<cfset CountryArray[243][2]='zm'>
<cfset CountryArray[244][1]='Zimbabwe'>
<cfset CountryArray[244][2]='zw'>