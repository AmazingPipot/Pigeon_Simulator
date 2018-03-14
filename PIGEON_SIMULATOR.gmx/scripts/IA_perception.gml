///Perception()
{
//Attention actuellement ne trie pas dans la liste les alliés des ennemis.
xx = x;//Pour éviter que l'agent puis se lister lui même, 
x = -50000;//eloignement de sa coordoné originelle

//Reinitialisation des percepts
//Percept Ennemi
PerceptAgent[0] = noone;
PerceptAgent[1] = noone;
PerceptAgent[2] = noone;
PerceptAgent[3] = noone;
PerceptAgent[4] = noone;
PerceptAgent[5] = noone;
PerceptAgent[6] = noone;
//Percept Allie
PerceptAgent[7] = noone;
PerceptAgent[8] = noone;
PerceptAgent[9] = noone;

MA = instance_nearest(xx,y,obj_meta_agent)

if MA != noone
&& distance_to_object(MA) < 50
    {
    Camp = MA.Camp
    if ds_list_size(Regiment) >= ds_list_size(MA.Regiment)
        {
        if ds_list_size(Regiment) == ds_list_size(MA.Regiment)
            {
            if id > MA.id
                {
                with(instance_create(x,y,obj_meta_agent_0))
                    {
                    Camp = other.Camp;
                    }
                instance_destroy();
                }
            }
        else
            {
            with(MA)
                {
                with(instance_create(x,y,obj_meta_agent_0))
                    {
                    Camp = other.Camp;
                    }
                instance_destroy();
                }
            }
        }
    }
    
for (n = 0; n < 7; n++)//Pour etre sur que la liste sera remplie au maximum
    {
    A = instance_nearest(xx,y,obj_agent);//Recherche de l'agent le plus proche
     
    if A.id != id //Et que ce n'est pas lui
        {
        if collision_line(xx,y,A.xx,A.y, obj_obstacle,1,1) != noone //Si presence d'un obstacle entre eux
        or abs(direction - point_direction(xx,y,A.xx,A.y)) > 90 //Si agent n'est pas dans son champ de perception
            {
            instance_deactivate_object(A); //on le desactive pour ne plus le prendre en compte
            }
        else
            {
            if PerceptAgent[0] == noone//Si pas d'obstcle on s'assure qu'on n'a pas deja listé un agent plus proche
                {
                PerceptAgent[0] = A.id;//On place son id dans la liste
                instance_deactivate_object(A);//et on le desactive pour qu'il ne soit plis pris en compte
                }
            }
        }
    else
        {
        break;
        }
        
    A = instance_nearest(xx,y,obj_agent)
    if A.id != id
        {
        if collision_line(xx,y,A.xx,A.y, obj_obstacle,1,1) != noone
        or abs(direction - point_direction(xx,y,A.xx,A.y)) > 90
            {
            instance_deactivate_object(A);
            }
        else
            {
            if PerceptAgent[1] == noone
                {
                PerceptAgent[1] = A.id;
                instance_deactivate_object(A);
                }
            }
        }
    else
        {
        break;
        }
    
    A = instance_nearest(xx,y,obj_agent)
    if A.id != id
        {
        if collision_line(xx,y,A.xx,A.y, obj_obstacle,1,1) != noone
        or abs(direction - point_direction(xx,y,A.xx,A.y)) > 90
            {
            instance_deactivate_object(A);
            }
        else
            {
            if PerceptAgent[2] == noone
                {
                PerceptAgent[2] = A.id;
                instance_deactivate_object(A);
                }
            }
        }
    else
        {
        break;
        }
    
        
    A = instance_nearest(xx,y,obj_agent)
    if A.id != id
        {
        if collision_line(xx,y,A.xx,A.y, obj_obstacle,1,1) != noone
        or abs(direction - point_direction(xx,y,A.xx,A.y)) > 90
            {
            instance_deactivate_object(A);
            }
        else
            {
            if PerceptAgent[3] == noone
                {
                PerceptAgent[3] = A.id;
                instance_deactivate_object(A);
                }
            }
        }
    else
        {
        break;
        }
        
    A = instance_nearest(xx,y,obj_agent)
    if A.id != id
        {
        if collision_line(xx,y,A.xx,A.y, obj_obstacle,1,1) != noone
        or abs(direction - point_direction(xx,y,A.xx,A.y)) > 90
            {
            instance_deactivate_object(A);
            }
        else
            {
            if PerceptAgent[4] == noone
                {
                PerceptAgent[4] = A.id;
                instance_deactivate_object(A);
                }
            }
        }
    else
        {
        break;
        }
        
    A = instance_nearest(xx,y,obj_agent)
    if A.id != id
        {
        if collision_line(xx,y,A.xx,A.y, obj_obstacle,1,1) != noone
        or abs(direction - point_direction(xx,y,A.xx,A.y)) > 90
            {
            instance_deactivate_object(A);
            }
        else
            {
            if PerceptAgent[5] == noone
                {
                PerceptAgent[5] = A.id;
                instance_deactivate_object(A);
                }
            }
        }
    else
        {
        break;
        }
        
    A = instance_nearest(xx,y,obj_agent)
    
    if A.id != id
        {
        if collision_line(xx,y,A.xx,A.y, obj_obstacle,1,1) != noone
        or abs(direction - point_direction(xx,y,A.xx,A.y)) > 90
            {
            instance_deactivate_object(A);
            }
        else
            {
            if PerceptAgent[6] == noone
                {
                PerceptAgent[6] = A.id;
                instance_deactivate_object(A);
                }
            }
        }
    else
        {
        break;
        }
        
    A = instance_nearest(xx,y,obj_agent)
    if A.id != id
        {
        if collision_line(xx,y,A.xx,A.y, obj_obstacle,1,1) != noone
        or abs(direction - point_direction(xx,y,A.xx,A.y)) > 90
            {
            instance_deactivate_object(A);
            }
        else
            {
            if PerceptAgent[7] == noone
                {
                PerceptAgent[7] = A.id;
                instance_deactivate_object(A);
                }
            }
        }
    else
        {
        break;
        }
    }
x = xx;//Replacement de l'objet a sa coordonné originelle
instance_activate_all();//Réactivaction de tous les instances désactivées

exit;
}
