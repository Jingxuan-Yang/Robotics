%Author: JingXuan Yang
%Date: 2019.03.05
%Calculate rotation matrix for each type of Euler angles

syms alpha beta gamma

%first kind Euler angles
RXYZ = Rx(alpha)*Ry(beta)*Rz(gamma);
RXZY = Rx(alpha)*Rz(beta)*Ry(gamma);

RYZX = Ry(alpha)*Rz(beta)*Rx(gamma);
RYXZ = Ry(alpha)*Rx(beta)*Rz(gamma);

RZXY = Rz(alpha)*Rx(beta)*Ry(gamma);
RZYX = Rz(alpha)*Ry(beta)*Rx(gamma);

%second kind Euler angles
RXYX = Rx(alpha)*Ry(beta)*Rx(gamma);
RXZX = Rx(alpha)*Rz(beta)*Rx(gamma);

RYXY = Ry(alpha)*Rx(beta)*Ry(gamma);
RYZY = Ry(alpha)*Rz(beta)*Ry(gamma);

RZXZ = Rz(alpha)*Rx(beta)*Rz(gamma);
RZYZ = Rz(alpha)*Ry(beta)*Rz(gamma);

%---------basic rotation matrix--------------------------------------------
function [RX] = Rx(angle)

RX = [1      0          0     ;
      0 cos(angle) -sin(angle);
      0 sin(angle) cos(angle)];

end

function [RY] = Ry(angle)

RY = [cos(angle)  0 sin(angle) ;
           0      1      0     ;
      -sin(angle) 0 cos(angle)];

end

function [RZ] = Rz(angle)

RZ = [cos(angle) -sin(angle) 0 ;
      sin(angle) cos(angle)  0 ;
         0          0        1];

end

%---------end--------------------------------------------------------------
