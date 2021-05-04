function dy = cute0(t,y)
dy = zeros(2,1);
dy(1) = (-i - .5*cos(t))*y(2) + .33 * t * (y(2))^2;
dy(2) = (-i + .5*cos(t))*y(1) - .33 * t * y(1) * y(2);

