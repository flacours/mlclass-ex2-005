function [J, grad] = unittest()
  [J, grad] = costFunction([0 1 0]',magic(3),[1 2 3]')
end
