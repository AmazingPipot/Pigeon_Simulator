///IA_deplacement()
{
if Ordre = 0
    {
    //if place_meeting(x,y,obj_agent) == false
        {
        if instance_exists(Cible)
                {
                if distance_to_object(Cible) > 5
                    {
                    speed = 2
                    Dir1 = point_direction(x,y,Cible.x,Cible.y)+random(10)-5
                    }
            if place_meeting(x,y,Cible)
                {
                if object_get_name(Cible.object_index) == "obj_formation"
                    {
                    /*if position_meeting(Officier.Formation.x,Officier.Formation.y,Officier.Formation)
                        {
                        speed = 1;
                        direction = point_direction(x,y,Officier.Formation.x,Officier.Formation.y)+random(10)-5
                        }*/
                    IA_Formation();
                    }
                else
                    {
                    speed = 0;
                    Dir1 = random(10)-5
                    }
                //PousseToi = 0;
                }
            }
        else
            {
            IA_repos();
            }
        /*else
            {
            if instance_exists(Cible)
            && place_meeting(x,y,Cible) == true
                {
                speed = 0;
                }
            else
                {
                speed = 2;
                }
            //direction = random(180)-90
            }*/
        }
    /*else
        {
        direction = point_direction(x,y,Cible.x,Cible.y)+180
        speed = 1
        }*/
    }
else
    {
    if Ordre = -1
        {
        speed = 0;
        }
    else
        {
        Dir1 = 180+random(10)-5
        speed = 2
        }
    }
exit;
}
