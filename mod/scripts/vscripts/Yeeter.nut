global function Yeeter


array<entity> trigs
vector vec = < 0, 0, 0 >

void function Yeeter()
{ 
	#if SERVER
	thread findTheTriggers()
	#endif
}

void function findTheTriggers()
{
	wait 2
	trigs = GetEntArrayByScriptName( "trigger_Yeeter" )


	foreach (entity trig in trigs)
	{
		
		entity realYeeter = CreateEntity( "trigger_cylinder" )
	    realYeeter.SetRadius(128)
	    realYeeter.SetAboveHeight(20)
	    realYeeter.SetBelowHeight(20)
	    realYeeter.SetOrigin(trig.GetOrigin())
	    DispatchSpawn( realYeeter )
		realYeeter.SetEnterCallback(yeet)
		print("set up a bounce pad!")
	}

	
}




void function yeet(entity trigger, entity player)
{
	vec = < player.GetVelocity().x, player.GetVelocity().y, 2500 >
	//player.SetVelocity( vec + (player.GetUpVector()*2500) )
	//vec = < 0, 0, 2500>
	player.SetVelocity( vec )
	//player.SetVelocity( (player.GetUpVector()*2500) )
}
