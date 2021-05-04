options = odeset('RelTol', 1e-4, 'AbsTol', [1e-4 1e-4]);
[T,Y] = ode45(@cute0, [0 12], [1 0], options);

plot(T, Y(:,1),'-', T, Y(:,2))

