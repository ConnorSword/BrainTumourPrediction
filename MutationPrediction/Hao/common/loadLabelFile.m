%% Import data from spreadsheet
% Script for importing data from the following spreadsheet:
%
%    Workbook:
%    /media/haocheng/2D1E-18F9/IMAGES/Kurtosis_Gliomas/37_Patients_Data.xlsx
%    Worksheet: Data
%
% To extend the code for use with different selected data or a different
% spreadsheet, generate a function instead of a script.

% Auto-generated by MATLAB on 2016/05/03 20:00:10

%% Import the data
function PatientsData = loadLabelFile(path)

[~, ~, PatientsData] = xlsread(path,'Data');
PatientsData = PatientsData(2:end,:);
PatientsData(cellfun(@(x) ~isempty(x) && isnumeric(x) && isnan(x),PatientsData)) = {''};
end
