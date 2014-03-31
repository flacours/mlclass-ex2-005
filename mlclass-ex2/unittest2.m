function [J, grad] = unittest2()
  [J, grad] = costFunction([3 ; 2 ; 1], magic(3), [1 ; 2 ; 3]);
end
