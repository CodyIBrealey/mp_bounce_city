global function DisableImpactMarks

void function DisableImpactMarks()
{ 
	SetConVarInt( "r_decals", 0 )
	print("script loaded with no errors")
}

