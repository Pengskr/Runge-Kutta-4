function [T,X] = lab_ode_rk4(fnc,T,X0)
    N=length(T);
    h=T(2)-T(1);
    X=zeros(length(X0),N);
    X(:,1)=X0;
    for i =2:N
        X_k = X(:,i-1);
        t_k = T(i-1);
        
        K1=fnc(t_k,X_k);
        K2=fnc(t_k+h/2,X_k+h/2*K1);
        K3=fnc(t_k+h/2,X_k+h/2*K2);
        K4=fnc(t_k+h,X_k+h*K3);
        
        X(:,i)=X_k + h/6*(K1+2*K2+2*K3+K4);
    end
end