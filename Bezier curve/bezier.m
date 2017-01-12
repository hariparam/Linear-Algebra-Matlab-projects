%Take the 4 input control points(b0,b1,b2,b3) for a cubic bezier plot it for t=1:100

function b = bezier3(cpoly)
    for i=1:100
        t(i)=i/100;
    end
    n = size(t,2);
    d = size(cpoly,2);
    b = zeros(n,d);
    for i = 1: d
        b(:,i) = (1-t).^3 *cpoly(1,i)+3*t.*(1-t).^2*cpoly(2,i)+3*t.^2.*(1-t)*cpoly(3,i)+t.^3*cpoly(4,i);
    end
end