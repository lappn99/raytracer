module rtweekend.vec3;


struct Vector3
{
	private double[3] vector;
	
	this(double val)
	{
		v[0..$] = val;

	}

	auto opBinary(string op)(Vector3 v) const
	{
		mixin("return typeof(this)(vector" ~ op ~ "v);");
	}

	auto opBinary(string op)(Vector3 v)
	{
		mixin("return typeof(this)(vector" ~ op ~ "v.vector);");

	}
}