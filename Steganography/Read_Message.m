%% Import the image with hidden image

Im = imread('MsgIm.bmp');

%% Extract the bitplane of the Messsage Signal

MessageImage = bitget(Im(:,:,1),1);

%% Visualize the Message
imshow(logical(MessageImage));
