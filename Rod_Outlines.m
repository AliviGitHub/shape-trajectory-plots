%PLOTTING OUTLINES OF RODS OVER TIME
rodOut=Outlines(~cellfun('isempty',Outlines));
lngthrodOut=length(rodOut);
figure

for g=1:20:lngthrodOut
    outG=rodOut{1,g};
    outG=outG*(284.25/2048);
    outGx=outG(:,1)';
    outGy=outG(:,2)';
    pgon=polyshape(outGx,outGy);
    [x,y]=centroid(pgon);
    outGx=outGx-x;
    outGy=outGy-y;
    hold on
    plot(outGx,outGy,'r', 'LineWidth', 2)
    scatter(x,y,25,'filled','k')
end
hold off