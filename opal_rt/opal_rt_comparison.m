% Step 1: Load the .mat file
data = load('wampac_result_case2_with_20gain_70sec.mat');

% Step 2: Inspect the variables
whos -file 'wampac_result_case2_with_20gain_70sec.mat'

% Step 3: Extract and plot variables
% Assuming the variables are time series data and we want to plot simout_case1
simout_case= data.simout;
time_f = simout_case.frequency.Time; % Assuming the variable has a 'Time' field
values_f = simout_case.frequency.Data; % Assuming the variable has a 'Data' field

time_v = simout_case.frequency.Time; % Assuming the variable has a 'Time' field
values_v = simout_case.Bus_voltage.Data; % Assuming the variable has a 'Data' field


% Plot the data
figure;
plot(time_f, values_f);
title('simout\_case1 Data');
xlabel('Time');
ylabel('Values');

% Plot the data
figure;
plot(time_v, values_v);
title('simout\_case1 Data');
xlabel('Time');
ylabel('Values');

% Step 4: Save the data as CSV
% Combine time and values into one matrix
output_data_f = [time_f, values_f];
output_data_v = [time_v, values_v];
writematrix(output_data_f, 'fq_wo_wampac.csv');
writematrix(output_data_v, 'voltage_wo_wampact.csv');

