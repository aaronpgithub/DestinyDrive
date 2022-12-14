function country_splash() {
	var ds_list_country = ds_list_create()

	ds_list_add(ds_list_country, 
	"AFGHANISTAN!",
	"ALBANIA!",
	"ALGERIA!",
	"ANDORRA!",
	"ANGOLA!",
	"ANGUILLA!",
	"ANTARTICA!",
	"ANTIGUA AND BARBUDA!",
	"ARGENTINIA!",
	"ARMENIA!",
	"ARUBA!",
	"AUSTRALIA!",
	"AUSTRIA!",
	"AZERBAIJAN!",
	"BAHAMAS!",
	"BAHRAIN!",
	"BANGLADESH!",
	"BARBADOS!",
	"BELARUS!",
	"BELGIUM!",
	"BELIZE!",
	"BENIN!",
	"BERMUDA!",
	"BHUTAN!",
	"BOLIVIA!",
	"BOSNIA AND HERZEGOVNIA!",
	"BOTSWANA!",
	"BRAZIL!",
	"BRUNEI!",
	"BULGARIA!",
	"BURKINA FASO!",
	"BURMA!",
	"BURUNDI!",
	"CAMBODIA!",
	"CAMEROON!",
	"CANADA!",
	"CAPE VERDE!",
	"CAMAYAN ISLANDS!",
	"CENTRAL AFRICAN REPUBLIC!",
	"CHAD!",
	"CHILE!",
	"CHINA!",
	"CHRISTMAS ISLAND!",
	"COCOS ISLANDS!",
	"COLOMBIA!",
	"COMOROS!",
	"DEMOCRATIC REPUBLIC OF THE CONGO!",
	"REPUBLIC OF CONGO!",
	"COOK ISLANDS!",
	"COSTA RICA!",
	"COTE D'IVORE!",
	"CROATIA!",
	"CUBA!",
	"CYPRUS!",
	"CZECH REPUBLIC!",
	"DENMARK!",
	"DJIBOUTI!",
	"DOMINICA!",
	"DOMINICAN REPUBLIC!",
	"EAST TIMOR!",
	"ECUADOR!",
	"EGYPT!",
	"EL SALVADOR!",
	"EQUATORIAL GUINEA!",
	"ERITREA!",
	"ESTONIA!",
	"ETHIOPIA!",
	"FALKLAND ISLANDS!",
	"FAROE ISLANDS!",
	"FIJI!",
	"FINLAND!",
	"FRANCE!",
	"FRENCH GUIANA!",
	"FRENCH POLYNESIA!",
	"GABON!",
	"GAMBIA!",
	"GEORGIA!",
	"GERMANY!",
	"GHANA!",
	"GIBRALTAR!",
	"GREAT BRITAIN!",
	"GREECE!",
	"GREENLAND!",
	"GRENADA!",
	"GUADELOUPE!",
	"GUAM!",
	"GUATEMALA!",
	"GUINEA!",
	"GUINEA-BISSAU!",
	"GUYANA!",
	"HAITI!",
	"HOLY SEE!",
	"HONDURAS!",
	"HONG KONG!",
	"HUNGARY!",
	"ICELAND!",
	"INDIA!",
	"INDONESIA!",
	"IRAN!",
	"IRAQ!",
	"IRELAND!",
	"ISRAEL!",
	"ITALY!",
	"IVORY COAST!",
	"JAMAICA!",
	"JAPAN!",
	"JORDAN!",
	"KAZAKHSTAN!",
	"KENYA!",
	"KIRIBATI!",
	"NORTH KOREA!",
	"SOUTH KOREA!",
	"KOSOVO!",
	"KUWAIT!",
	"KYRGYZSTAN!",
	"LAO!",
	"LATVIA!",
	"LEBANON!",
	"LESOTHO!",
	"LIBERIA!",
	"LIBYA!",
	"LIECHTENSTEIN!",
	"LITHUANIA!",
	"LUXEMBOURG!",
	"MACAU!",
	"MACEDONIA!",
	"MADAGASCAR!",
	"MALAWI!",
	"MALAYSIA!",
	"MALDIVES!",
	"MALI!",
	"MALTA!",
	"MARSHALL ISLANDS!",
	"MARTINIQUE!",
	"MAURITANIA!",
	"MAURITIUS!",
	"MAYOTTE!",
	"MICRONESIA!",
	"MOLDOVA!",
	"MONACO!",
	"MONGOLIA!",
	"MONTENEGRO!",
	"MONTSERRAT!",
	"MOROCCO!",
	"MOZAMBIQUE!",
	"MYANMAR!",
	"NAMIBIA!",
	"NAURU!",
	"NEPAL!",
	"NETHERLANDS!",
	"NETHERLANDS ANTILLES!",
	"NEW CALEDONIA!",
	"NEW ZEALAND!",
	"NICAURAGUA!",
	"NIGER!",
	"NIGERIA!",
	"NIUE!",
	"NORTHERN MARIANA ISLANDS!",
	"NORWAY!",
	"OMAN!",
	"PAKISTAN!",
	"PALAU!",
	"PALESTONIAN TERRITORIES!",
	"PANAMA!",
	"PAPUA NEW GUINEA!",
	"PARAGUAY!",
	"PERU!",
	"PHILIPPINES!",
	"PITCAIRN ISLAND!",
	"POLAND!",
	"PORTUGAL!",
	"PUERTO RICO!",
	"QATAR!",
	"REUNION ISLAND!",
	"ROMANIA!",
	"RUSSIAN FEDERATION!",
	"RWANDA!",
	"SAINT KITTS AND NEVIS!",
	"SAINT LUCIA!",
	"SAINT VINCENT AND THE GRENADINES!",
	"SAMOA!",
	"SAN MARINO!",
	"SAO TOME AND PRINCIPE!",
	"SAUDI ARABIA!",
	"SENEGAL!",
	"SERBIA!",
	"SEYCHELLES!",
	"SIERRA LEONE!",
	"SINGAPORE!",
	"SLOVAKIA!",
	"SLOVENIA!",
	"SOLOMON ISLANDS!",
	"SOMALIA!",
	"SOUTH AFRICA!",
	"SOUTH SUDAN!",
	"SPAIN!",
	"SRI LANKA!",
	"SUDAN!",
	"SURINAME!",
	"SWAZILAND!",
	"SWEDEN!",
	"SWITZERLAND!",
	"SYRIA!",
	"TAIWAN!",
	"TAJIKISTAN!",
	"TANZANIA!",
	"THAILAND!",
	"TIBET!",
	"TIMOR-LESTE!",
	"TOGO!",
	"TOKELAU!",
	"TONGA!",
	"TRINIDAD AND TOBAGO!",
	"TUNISIA!",
	"TURKEY!",
	"TURKMENISTAN!",
	"TURKS AND CAICOS ISLANDS!",
	"TUVALU!",
	"UGANDA!",
	"UKRAINE!",
	"UNITED ARAB EMIRATES!",
	"UNITED KINGDOM!",
	"UNITED STATES!",
	"URUGUAY!",
	"UZBEKISTAN!",
	"VANUATU!",
	"VATICAN CITY STATE!",
	"VENEZUELA!",
	"VIETNAM!",
	"VIRGIN ISLANDS!",
	"WALLIS AND FUTANA ISLANDS!",
	"WESTERN SAHARA!",
	"YEMEN!",
	"ZAMBIA!",
	"ZIMBABWE!"
	)
	ds_list_shuffle(ds_list_country)
	splash = ds_list_find_value(ds_list_country, 0)

	ds_list_destroy(ds_list_country)


}
