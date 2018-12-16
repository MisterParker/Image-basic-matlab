% Load an image

I2 = imread('/Users/prakhar/Desktop/Prakhar/CODing/Matlab basic/text.gif');
imshow(I2);

% Perform OCR
results = ocr(I2);
results.Text()

% Display one of the recognized words

