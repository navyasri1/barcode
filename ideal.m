clear
I= imread('4.jpg');
%I=rgb2gray(I);
I=im2bw(I);
bw=I;
[x,y]=size(I);

p=find(~I(100,:),1);
q=find(~I(100,:),1,'last');

flag=0;
for i=1:1:x
    for j= 1:1:y
        if(I(i,j)==0)
            flag=1;
            break;
        end
    end
    if(flag==1)
        break;
    end
end

startx=i;
starty=j;
endx=startx;
    
for j=y:-1:1
        if(I(endx,j)==0)
            break;
        end
end
endy=j;
width=endy-starty;

I=imcrop(I,[starty startx width 0]);
%bw=I;
I=imresize(I,[1,95]);
bw=I;
I=imcomplement(I);

i=4;
k=1;
c=[88 76 100 94 98 70 122 110 118 104];
d=[39 51 27 33 29 57 5 17 9 23];
for r=1:5
for j=1:10
    if(bi2de(I(i:i+6))==c(j))
        v(k)=j-1;
        k=k+1;
        i=i+7;
    end
end
end

i=i+5;
i
for r=1:6
for j=1:10
    if(bi2de(I(i:i+6))==d(j))
        v(k)=j-1;
        k=k+1;
        i=i+7;
      break;
    end
end
end
imshow('4.jpg')
v
