function res=predict(X,theta_new)
[nSamples, nFeature] = size(X);
res = zeros(nSamples,1);
   for i = 1:nSamples
       sigm = 1 / (1 + exp(-(X(i,:) * theta_new)));
       if sigm >= 0.5
            res(i) = 1;
        else
            res(i) = 0;
        end
   end
end

