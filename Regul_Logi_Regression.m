function theta_new = Regul_Logi_Regression(X, Y, theta_old,maxIter,alpha,lambda)
    [nSamples, nFeature] = size(X);
    theta_new = theta_old;
    for j = 1:maxIter
        temp = zeros(nFeature,1);
        for k = 1:nSamples
            temp = temp + (1 / (1 + exp(-(X(k,:) * theta_new)))- Y(k)) * X(k,:)'; 
        end
        for iter = 1:nFeature
            temp1=temp(iter,1)+lambda*theta_new(iter,1);
            temp1=temp1/nSamples;
            theta_new(iter,1) =theta_new(iter,1) - alpha* temp1;
            temp1=0;
        end
    end 
end