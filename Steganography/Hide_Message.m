%% Import the Base Image
Base = imread('Base.jpg');
figure,imshow(Base);title('Base Image')
%% Import the Message Image and convert to Binary Image
Message = imread('Message.jpeg');
Msg = imbinarize(rgb2gray(Message));

%% Resize the message and base image to same size
Msg = imresize(Msg,size(Base(:,:,1)));

%% Select a bit plane and change it to our message signal
New = Base;
New(:,:,1) = bitset(New(:,:,1),1,Msg);

%% Save the Image file
figure,imshow(New);title('Image with hidden message')
figure,imshowpair(Base,New,'montage');title('Base image & Encypted Image(from left)')
% imwrite(New,'MsgIm.bmp');
% clear all;