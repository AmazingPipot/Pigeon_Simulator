///IA_Formation(Formation)
{
if Contact == 1
    {
    speed = 1
    }
else
    {
    speed = 0;
    direction = Officier.direction;
    }
/*if place_meeting(bbox_left+1,y,obj_agent) == true
    {
    //PousseToi = 0;
    
    if place_meeting(bbox_right+1,y,obj_agent) == false
    && position_meeting(bbox_right+1,y,obj_formation) == true
        {
        speed = 1;
        }
    else
        {
        if place_meeting(bbox_bottom+1,y,obj_agent) == false
        && position_meeting(bbox_bottom+1,y,obj_formation) == true
            {
            speed = 1;
            }
        else
            {
            if place_meeting(bbox_top-1,y,obj_agent) == false
            && position_meeting(bbox_top-1,y,obj_formation) == true
                {
                speed = 1;
                }
            else
                {
                if place_meeting(bbox_left+1,y,obj_agent) == false
                && position_meeting(bbox_left+1,y,obj_formation) == true
                    {
                    speed = 1;
                    }
                else
                    {
                    speed = 0;
                    }
                }
            }
        }
    }*/ 
}
