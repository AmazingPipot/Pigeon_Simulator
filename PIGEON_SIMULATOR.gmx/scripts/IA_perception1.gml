///IA_perception2()
{
//Attention actuellement ne trie pas dans la liste les alliés des ennemis.
xx = x;//Pour éviter que l'agent puis se lister lui même, 
x = -50000;//eloignement de sa coordoné originelle

//Reinitialisation des percepts
//Percept Ennemi
PerceptAgentEnnemi[0] = noone;
PerceptAgentEnnemi[1] = noone;
PerceptAgentEnnemi[2] = noone;
PerceptAgentEnnemi[3] = noone;

//Percept Allie
PerceptAgentAllie[1] = noone;
PerceptAgentAllie[2] = noone;

MA = instance_nearest(xx,y,Off)

if instance_exists(MA)
&& sqrt(sqr(MA.xx-xx)+sqr(MA.y-y)) < 150
&& MA.id != id
    {
    if Rang >= MA.Rang
        {
        if Rang == MA.Rang
            {
            if id < MA.id
                {
                if object_get_name(object_index) == object_get_name(Off_sup)
                    {
                    with(MA)
                        {
                        ID = other.id
                        with(instance_create(xx,y,Allie))
                            {
                            Camp = other.Camp;
                            Officier = other.ID;
                            ds_list_add(other.ID.Regiment, id);
                            }
                        instance_destroy();
                        }
                    }
                else
                    {
                    with(MA)
                        {
                        with(other)
                            {
                            with(instance_create(xx,y,Off_sup))
                                {
                                Camp = other.Camp;
                                other.ID = id;
                                }
                            other.ID = ID;
                            instance_destroy();
                            }
                        
                        with(instance_create(xx,y,Allie))
                            {
                            Camp = other.Camp;
                            Officier = other.ID;
                            ds_list_add(other.ID.Regiment, id);
                            }
                        instance_destroy();
                        }
                    }
                }
            }
        else
            {
            with(MA)
                {
                ID = other.id
                
                with(instance_create(xx,y,Allie))
                    {
                    Camp = other.Camp;
                    Officier = other.ID;
                    ds_list_add(other.ID.Regiment, id);
                    }
                instance_destroy();
                }
            }
        }
    }

for (n = 0; n < 7; n++)//Pour etre sur que la liste sera remplie au maximum
    {
    A = instance_nearest(xx,y,Allie);//Recherche de l'agent le plus proche
    
    if instance_exists(A)
        {
    if A.id != id //Et que ce n'est pas lui
        {
        if collision_line(xx,y,A.xx,A.y, obj_obstacle,1,1) != noone //Si presence d'un obstacle entre eux
        or abs(direction - point_direction(xx,y,A.xx,A.y)) > 90 //Si agent n'est pas dans son champ de perception
            {
            instance_deactivate_object(A); //on le desactive pour ne plus le prendre en compte
            }
        else
            {
            if PerceptAgentAllie[0] == noone//Si pas d'obstcle on s'assure qu'on n'a pas deja listé un agent plus proche
                {
                PerceptAgentAllie[0] = A.id;//On place son id dans la liste
                instance_deactivate_object(A);//et on le desactive pour qu'il ne soit plis pris en compte
                }
            }
        }
    }
    /*else
        {
        break;
        }*/
    
        
    A = instance_nearest(xx,y,Allie)
    if instance_exists(A)
        {
    if A.id != id
        {
        if collision_line(xx,y,A.xx,A.y, obj_obstacle,1,1) != noone
        or abs(direction - point_direction(xx,y,A.xx,A.y)) > 90
            {
            instance_deactivate_object(A);
            }
        else
            {
            if PerceptAgentAllie[1] == noone
                {
                PerceptAgentAllie[1] = A.id;
                instance_deactivate_object(A);
                }
            }
        }
    }
    /*else
        {
        break;
        }*/
    /////////////////////////////////////////////////////////////////
    if instance_exists(Ennemi)
        {
        A = instance_nearest(xx,y,Ennemi);//Recherche de l'agent le plus proche
        
        if A.id != id //Et que ce n'est pas lui
            {
            if collision_line(xx,y,A.xx,A.y, obj_obstacle,1,1) != noone //Si presence d'un obstacle entre eux
            or abs(direction - point_direction(xx,y,A.xx,A.y)) > 90 //Si agent n'est pas dans son champ de perception
                {
                instance_deactivate_object(A); //on le desactive pour ne plus le prendre en compte
                }
            else
                {
                if PerceptAgentEnnemi[0] == noone//Si pas d'obstcle on s'assure qu'on n'a pas deja listé un agent plus proche
                    {
                    PerceptAgentEnnemi[0] = A.id;//On place son id dans la liste
                    instance_deactivate_object(A);//et on le desactive pour qu'il ne soit plis pris en compte
                    }
                }
            }
        }
        /*else
            {
            break;
            }*/
    if instance_exists(Ennemi)
        {   
        A = instance_nearest(xx,y,Ennemi)
        if A.id != id
            {
            if collision_line(xx,y,A.xx,A.y, obj_obstacle,1,1) != noone
            or abs(direction - point_direction(xx,y,A.xx,A.y)) > 90
                {
                instance_deactivate_object(A);
                }
            else
                {
                if PerceptAgentEnnemi[1] == noone
                    {
                    PerceptAgentEnnemi[1] = A.id;
                    instance_deactivate_object(A);
                    }
                }
            }
        }
        /*else
            {
            break;
            }*/
    if instance_exists(Ennemi)
        {
        A = instance_nearest(xx,y,Ennemi)
        if A.id != id
            {
            if collision_line(xx,y,A.xx,A.y, obj_obstacle,1,1) != noone
            or abs(direction - point_direction(xx,y,A.xx,A.y)) > 90
                {
                instance_deactivate_object(A);
                }
            else
                {
                if PerceptAgentEnnemi[2] == noone
                    {
                    PerceptAgentEnnemi[2] = A.id;
                    instance_deactivate_object(A);
                    }
                }
            }
        }
        /*else
            {
            break;
            }*/
        
    if instance_exists(Ennemi)
        { 
        A = instance_nearest(xx,y,Ennemi)
        
        if A.id != id
            {
            if collision_line(xx,y,A.xx,A.y, obj_obstacle,1,1) != noone
            or abs(direction - point_direction(xx,y,A.xx,A.y)) > 90
                {
                instance_deactivate_object(A);
                }
            else
                {
                if PerceptAgentEnnemi[3] == noone
                    {
                    PerceptAgentEnnemi[3] = A.id;
                    instance_deactivate_object(A);
                    }
                }
            }
        /*else
            {
            break;
            }*/
        }
    /*A = instance_nearest(xx,y,Ennemi)
    if A.id != id
        {
        if collision_line(xx,y,A.xx,A.y, obj_obstacle,1,1) != noone
        or abs(direction - point_direction(xx,y,A.xx,A.y)) > 90
            {
            instance_deactivate_object(A);
            }
        else
            {
            if PerceptAgentEnnemi[4] == noone
                {
                PerceptAgentEnnemi[4] = A.id;
                instance_deactivate_object(A);
                }
            }
        }
    else
        {
        break;
        }
        
    A = instance_nearest(xx,y,Ennemi)
    if A.id != id
        {
        if collision_line(xx,y,A.xx,A.y, obj_obstacle,1,1) != noone
        or abs(direction - point_direction(xx,y,A.xx,A.y)) > 90
            {
            instance_deactivate_object(A);
            }
        else
            {
            if PerceptAgentEnnemi[5] == noone
                {
                PerceptAgentEnnemi[5] = A.id;
                instance_deactivate_object(A);
                }
            }
        }
    else
        {
        break;
        }
        
    A = instance_nearest(xx,y,Ennemi)
    
    if A.id != id
        {
        if collision_line(xx,y,A.xx,A.y, obj_obstacle,1,1) != noone
        or abs(direction - point_direction(xx,y,A.xx,A.y)) > 90
            {
            instance_deactivate_object(A);
            }
        else
            {
            if PerceptAgentEnnemi[6] == noone
                {
                PerceptAgentEnnemi[6] = A.id;
                instance_deactivate_object(A);
                }
            }
        }
    else
        {
        break;
        }
        
    A = instance_nearest(xx,y,Ennemi)
    if A.id != id
        {
        if collision_line(xx,y,A.xx,A.y, obj_obstacle,1,1) != noone
        or abs(direction - point_direction(xx,y,A.xx,A.y)) > 90
            {
            instance_deactivate_object(A);
            }
        else
            {
            if PerceptAgentEnnemi[7] == noone
                {
                PerceptAgentEnnemi[7] = A.id;
                instance_deactivate_object(A);
                }
            }
        }
    else
        {
        break;
        }*/
    }
x = xx;//Replacement de l'objet a sa coordonné originelle
instance_activate_all();//Réactivaction de tous les instances désactivées

exit;
}
