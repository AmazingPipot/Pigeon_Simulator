///IA_attaque();
{
speed = 0;
if t < R_fusil // Variable actuellement globale de temps de recharge, on pourrait aussi faire appel à obj_globVar.R_fusil et plus besoin de globalité. Meilleur optimisation?
    {
    t++;
    } 
else
    {
    if Ordre = 0
        {
        if Ordre = 0
            {
            direction = point_direction(x,y,Cible.x,Cible.y)
            }
        
        if collision_line(x,y,Cible.x,Cible.y,Allie,1,1) == noone
            {
            with(instance_create(x,y,obj_arme))
                {
                direction = other.direction;//On fait partir la balle dans sa direction
                ID = other.id;//On s'assure que la balle va pas nous considérer comme la cible
                }
            t = 0;
            }
        }
    }
}
