function [X, y] = loadData(path)

data = load(path);

X = data(:, 1:(end-1));
y = data(:, end);

end
