import std.stdio;
import std.format;
void main()
{
	int imageWidth = 256;
	int imageHeight = 256;

	writeln("P3\n%d %d\n255\n".format(imageWidth,imageHeight));
	for(int j = imageHeight - 1; j>= 0; --j)
	{
		stderr.writefln("\rScanlines remaining: %d",j);
		for(int i = 0; i < imageWidth;++i)
		{
			auto r = cast(double) i/ (imageWidth - 1);
			auto g = cast(double) j / (imageHeight - 1);
			auto b = 0.25;

			int ir = cast(int)(255.999 * r);
			int ig = cast(int)(255.999 * g);
			int ib = cast(int)(255.999 * b);
			writeln("%d %d %d".format(ir,ig,ib));

		}
	}

	
}
