f = @(x,y,z) (x.^2 + (9/4)*y.^2+z.^2-1).^3-x.^2.*z.^3-(9/80)*y.^2.*z.^3;
fimplicit3(f,[-1.5, 1.5,-1.5,1.5,-1.5,1.5],"EdgeColor",'none','FaceAlpha',0.5);
view(1, 2);