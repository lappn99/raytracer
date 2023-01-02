module ray;
import realmutil.rmath;
import std.stdio;
struct Ray
{
	point3 origin;
	vec3 direction;
	this(point3 origin, vec3 dir)
	{
		this.origin = origin;
		this.direction = dir;
	}

	point3 at(float t) 
	{
		vec3 tb = direction * t;
		return origin + tb;
	}


}

