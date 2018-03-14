///IA_perception2()
{
A = noone;
if instance_exists(Allie)
or instance_exists(Ennemi)
    {
    if instance_exists(Allie)
        {
        A = instance_nearest(xx,y,Allie);
        
        if A.id != id //Et que ce n'est pas lui
            {
            if collision_line(xx,y,A.xx,A.y, obj_obstacle,1,1) != noone //Si presence d'un obstacle entre eux
            or abs(direction - point_direction(xx,y,A.xx,A.y)) > 90 //Si agent n'est pas dans son champ de perception
                {
                instance_deactivate_object(A); //on le desactive pour ne plus le prendre en compte
                }
            else
                {
                if ds_exists(PerceptAgentAllie, ds_type_list)
                    {
                    if is_undefined(ds_list_find_value(PerceptAgentAllie,I)) == false 
                        {
                        ds_list_replace(PerceptAgentAllie,I,A.id);//On place son id dans la liste
                        }
                    else
                        {
                        ds_list_add(PerceptAgentAllie,A.id);
                        }
                    instance_deactivate_object(A);//et on le desactive pour qu'il ne soit plis pris en compte
                    }
                }
            }
        }
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
                if ds_exists(PerceptAgentEnnemi, ds_type_list)
                    {
                    if ds_list_empty(PerceptAgentEnnemi) && is_undefined(ds_list_find_value(PerceptAgentAllie,I)) == false 
                            {
                            ds_list_replace(PerceptAgentEnnemi,I,A.id);//On place son id dans la liste
                            }
                        else
                            {
                            ds_list_add(PerceptAgentEnnemi,A.id);
                            }
                    instance_deactivate_object(A);//et on le desactive pour qu'il ne soit plis pris en compte   
                    I++;
                    }
                }
            }
        }
    II++;
    
    if II < 100
    or (ds_exists(PerceptAgentEnnemi, ds_type_list) && ds_list_size(PerceptAgentEnnemi) <= 7)
        {
        if A.id != id
            {
            if I <= 30
                {IA_perception2();}
            }
        }
    else
        {
        exit;
        }
    }
exit;
}

        
    
