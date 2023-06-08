function totaldis = getDistance(lat,lon)
%GETDISTANCE Claclate distance from 
%   Detailed explanation goes here
earthCirc = 40075000;
totaldis = 0;

for i = 1:(length(lat)-1)
    lat1 = lat(i);     % The first latitude
    lat2 = lat(i+1);   % The second latitude
    lon1 = lon(i);     % The first longitude
    lon2 = lon(i+1);   % The second longitude
 
    degDis = distance(lat1, lon1, lat2, lon2);
    dis = (degDis/360)*earthCirc;
    totaldis = totaldis + dis;

end

end