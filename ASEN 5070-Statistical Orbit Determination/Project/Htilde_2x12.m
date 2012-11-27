function Htilde = Htilde_2x12(Xsite,Ysite,Zsite,theta,theta_dot,x,xdot,y,ydot,z,zdot)
%HTILDE_2X12
%    HTILDE = HTILDE_2X12(XSITE,YSITE,ZSITE,THETA,THETA_DOT,X,XDOT,Y,YDOT,Z,ZDOT)

%    This function was generated by the Symbolic Math Toolbox version 5.9.
%    13-Nov-2012 22:39:51

t2 = sin(theta);
t3 = cos(theta);
t4 = Xsite.*y.*2.0;
t17 = Ysite.*x.*2.0;
t5 = t4-t17;
t6 = Xsite.^2;
t7 = Ysite.^2;
t8 = Zsite.^2;
t9 = x.^2;
t10 = y.^2;
t11 = z.^2;
t12 = Xsite.*x.*2.0;
t13 = Ysite.*y.*2.0;
t14 = t12+t13;
t18 = t2.*t5;
t19 = Zsite.*z.*2.0;
t20 = t3.*t14;
t15 = t6+t7+t8+t9+t10+t11-t18-t19-t20;
t16 = 1.0./sqrt(t15);
t21 = Zsite.*2.0;
t42 = z.*2.0;
t22 = t21-t42;
t23 = Ysite.*t3.*2.0;
t24 = Xsite.*t2.*2.0;
t25 = t23+t24-y.*2.0;
t26 = Xsite.*ydot;
t43 = Ysite.*xdot;
t27 = t26-t43;
t28 = t2.*t27;
t29 = Zsite.*zdot;
t30 = Xsite.*xdot;
t31 = Ysite.*ydot;
t32 = t30+t31;
t33 = t3.*t32;
t34 = Xsite.*y;
t47 = Ysite.*x;
t35 = t34-t47;
t36 = t3.*t35.*theta_dot;
t37 = Xsite.*x;
t38 = Ysite.*y;
t39 = t37+t38;
t44 = x.*xdot;
t45 = y.*ydot;
t46 = z.*zdot;
t48 = t2.*t39.*theta_dot;
t40 = t28+t29+t33+t36-t44-t45-t46-t48;
t41 = 1.0./t15.^(3.0./2.0);
t49 = Ysite.*t2;
t50 = t49+x-Xsite.*t3;
t51 = t16.*t50;
t52 = t3.*x.*2.0;
t53 = t2.*y.*2.0;
t54 = Xsite.*-2.0+t52+t53;
t55 = Ysite.*2.0;
t56 = t2.*x.*2.0;
t57 = t55+t56-t3.*y.*2.0;
t58 = t16.*zdot;
Htilde = reshape([t51,t16.*(xdot+Xsite.*t2.*theta_dot+Ysite.*t3.*theta_dot)+t40.*t41.*(x.*2.0-Xsite.*t3.*2.0+Ysite.*t2.*2.0).*(1.0./2.0),t16.*t25.*(-1.0./2.0),t16.*(ydot-Xsite.*t3.*theta_dot+Ysite.*t2.*theta_dot)-t25.*t40.*t41.*(1.0./2.0),t16.*t22.*(-1.0./2.0),t58-t22.*t40.*t41.*(1.0./2.0),0.0,t51,0.0,-t16.*(-y+Xsite.*t2+Ysite.*t3),0.0,-t16.*(Zsite-z),0.0,0.0,0.0,0.0,0.0,0.0,t16.*t54.*(-1.0./2.0),-t16.*(t3.*xdot+t2.*ydot-t2.*theta_dot.*x+t3.*theta_dot.*y)-t40.*t41.*t54.*(1.0./2.0),t16.*t57.*(1.0./2.0),t16.*(t2.*xdot-t3.*ydot+t3.*theta_dot.*x+t2.*theta_dot.*y)+t40.*t41.*t57.*(1.0./2.0),t16.*t22.*(1.0./2.0),-t58+t22.*t40.*t41.*(1.0./2.0)],[2, 12]);