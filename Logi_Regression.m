function theta_new = Logi_Regression(X, Y, theta_old,maxIter,alpha)
    [nSamples, nFeature] = size(X);
    theta_new = theta_old;
    for j = 1:maxIter
        temp = zeros(nFeature,1);
        for k = 1:nSamples
            temp = temp + (1 / (1 + exp(-(X(k,:) * theta_new)))- Y(k)) * X(k,:)'; 
        end
        temp=temp/nSamples;
       theta_new =theta_new - alpha* temp;
    end 
end