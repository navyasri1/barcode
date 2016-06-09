%clear
%startup_mvtb
startup_rvc
im = imread('notrodame.jpg');
image(im);
P = ginput(4)';
%I=[P(1,1) P(1,1) P(1,3) P(1,3); P(2,3) P(2,2) P(2,2) P(2,3)];
X = [min(P(1,:)), min(P(2,:)); 
     max(P(1,:)), min(P(2,:)); 
     max(P(1,:)), max(P(2,:)); 
     min(P(1,:)), max(P(2,:))]';
H = homography(P, X);
output = homwarp(H, im,'full');
figure,imshow(output,[])
%imwrite(output, 'output.jpg');
