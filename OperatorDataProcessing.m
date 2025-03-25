% Open a dialog box to select the file from anywhere in the system
[fileName, filePath] = uigetfile('*.xlsx', 'Select the Excel File');

% Check if the user canceled the file selection
if isequal(fileName, 0)
    disp('User canceled the file selection.');
else
    % Combine the file path and name to create the full file path
    fullFilePath = fullfile(filePath, fileName);

    % Read the data from the selected file
    data = readmatrix(fullFilePath);

    % Read the header from the first row of the selected file
    header = readcell(fullFilePath, 'Range', '1:1');

    % Get the number of operators from the first column
    numOp = max(data(:, 1));

    % Display a welcome message
    fprintf('--------------------------------------------------\n');
    disp('Welcome to the Data Processing Tool!');
    fprintf('--------------------------------------------------\n');
    fprintf('\nYou have selected the file: %s\n', fullFilePath);
    fprintf('Number of operators: %d\n', numOp);

    % Loop through the unique operator numbers
    for i = 1:numOp
        operatorData = data(data(:, 1) == i, :);

        % Extract the columns for this operator
        columns = operatorData(:, 2:end);

        for j = 1:size(columns, 2)
            % Generate variable names dynamically based on the operator and header
            varName = ['Op' num2str(i) '_' header{j+1}];

            % Assign the column data to the base workspace
            assignin('base', varName, columns(:, j));
        end
    end

    % Provide detailed instructions to the user for fitting the data
    fprintf('\n--------------------------------------------------\n');
    disp('Instructions to fit the data using MATLAB Distribution Fitter:');
    disp('--------------------------------------------------');
    disp('   1. Open MATLAB and go to the "APPS" tab.');
    disp('   2. In the "APPS" tab, click on "Distribution Fitter" to launch the app.');
    disp('   3. Once the app opens, select the variable that you want to analyze from the list of workspace variables.');
    disp('   4. Click on the "New Fit" button.');
    disp('   5. The app will attempt to fit a distribution to your data. You can then review the fit results.');
    disp('   6. Choose the best distribution that fits your data based on the "Fit Info" and goodness-of-fit statistics.');
    disp('   7. You can also visualize the fitted distribution and compare it to the data using the plots provided.');
    disp('--------------------------------------------------');
    fprintf('\nYou are now ready to analyze your data!\n\n');
end

clear varName i j numOp header