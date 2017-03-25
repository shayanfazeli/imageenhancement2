%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Shayan Fazeli - 91102171 %
%Image Processing         %
%Fall 2015                %
%%%%%%%%%%%%%%%%%%%%%%%%%%%

%Script Starts:
clear all;
clc;
%disp('Script is running... Click to continue');
%pause;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%First, we have to process 'im030.jpg':
disp('im030.jpg is being processed...');
%reading the input image:
image = imread('im030.jpg');
%showing the original image:
subplot(1,2,1);
imshow(image); title('Original Image');
%processing the image:
gray = rgb2gray(image);
indices = gray>60;
indices = cat(3,cat(3,indices,indices),indices);
image(indices) = uint8(255*((double(image(indices))/255).^0.9));
image(~indices) = uint8(255*((double(image(~indices))/255).^0.5));
processed_image=image;
subplot(1,2,2);
imshow(processed_image); title('Processed Image');
imwrite(processed_image,'HW1_Q1_2.jpg');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%