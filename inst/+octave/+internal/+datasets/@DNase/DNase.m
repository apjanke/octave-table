## Copyright (C) 2019 Andrew Janke
##
## This program is free software; you can redistribute it and/or modify
## it under the terms of the GNU General Public License as published by
## the Free Software Foundation; either version 2 of the License, or
## (at your option) any later version.
##
## This program is distributed in the hope that it will be useful,
## but WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
## GNU General Public License for more details.
##
## You should have received a copy of the GNU General Public License
## along with this program; If not, see <http://www.gnu.org/licenses/>.

# This is based on the DNase dataset from R’s datasets package

classdef DNase < octave.internal.dataset

  methods

    function this = DNase
      this.name = "DNase";
      this.summary = "Elisa assay of DNase";
    endfunction

    function out = load (this)
      Run = categorical([4, 4, 4, 4, 4, 4, 4, ...
        4, 4, 4, 4, 4, 4, 4, 4, 4, 10, 10, 10, 10, 10, 10, 10, 10, 10, ...
        10, 10, 10, 10, 10, 10, 10, 11, 11, 11, 11, 11, 11, 11, 11, 11, ...
        11, 11, 11, 11, 11, 11, 11, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, ...
        5, 5, 5, 5, 5, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, ...
        9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 8, 8, 8, 8, 8, ...
        8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, ...
        6, 6, 6, 6, 6, 6, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, ...
        3, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, ...
        2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2], ...
        1:11, ...
        {"10", "11", "9", "1", "4", "8", "5", "7", "6", "2", "3"}, ...
        "Ordinal", true)';
      conc = [0.04882812, 0.04882812, 0.1953125, ...
        0.1953125, 0.390625, 0.390625, 0.78125, 0.78125, 1.5625, 1.5625, ...
        3.125, 3.125, 6.25, 6.25, 12.5, 12.5, 0.04882812, 0.04882812, ...
        0.1953125, 0.1953125, 0.390625, 0.390625, 0.78125, 0.78125, 1.5625, ...
        1.5625, 3.125, 3.125, 6.25, 6.25, 12.5, 12.5, 0.04882812, 0.04882812, ...
        0.1953125, 0.1953125, 0.390625, 0.390625, 0.78125, 0.78125, 1.5625, ...
        1.5625, 3.125, 3.125, 6.25, 6.25, 12.5, 12.5, 0.04882812, 0.04882812, ...
        0.1953125, 0.1953125, 0.390625, 0.390625, 0.78125, 0.78125, 1.5625, ...
        1.5625, 3.125, 3.125, 6.25, 6.25, 12.5, 12.5, 0.04882812, 0.04882812, ...
        0.1953125, 0.1953125, 0.390625, 0.390625, 0.78125, 0.78125, 1.5625, ...
        1.5625, 3.125, 3.125, 6.25, 6.25, 12.5, 12.5, 0.04882812, 0.04882812, ...
        0.1953125, 0.1953125, 0.390625, 0.390625, 0.78125, 0.78125, 1.5625, ...
        1.5625, 3.125, 3.125, 6.25, 6.25, 12.5, 12.5, 0.04882812, 0.04882812, ...
        0.1953125, 0.1953125, 0.390625, 0.390625, 0.78125, 0.78125, 1.5625, ...
        1.5625, 3.125, 3.125, 6.25, 6.25, 12.5, 12.5, 0.04882812, 0.04882812, ...
        0.1953125, 0.1953125, 0.390625, 0.390625, 0.78125, 0.78125, 1.5625, ...
        1.5625, 3.125, 3.125, 6.25, 6.25, 12.5, 12.5, 0.04882812, 0.04882812, ...
        0.1953125, 0.1953125, 0.390625, 0.390625, 0.78125, 0.78125, 1.5625, ...
        1.5625, 3.125, 3.125, 6.25, 6.25, 12.5, 12.5, 0.04882812, 0.04882812, ...
        0.1953125, 0.1953125, 0.390625, 0.390625, 0.78125, 0.78125, 1.5625, ...
        1.5625, 3.125, 3.125, 6.25, 6.25, 12.5, 12.5, 0.04882812, 0.04882812, ...
        0.1953125, 0.1953125, 0.390625, 0.390625, 0.78125, 0.78125, 1.5625, ...
        1.5625, 3.125, 3.125, 6.25, 6.25, 12.5, 12.5]';
      density = [0.017, ...
        0.018, 0.121, 0.124, 0.206, 0.215, 0.377, 0.374, 0.614, 0.609, ...
        1.019, 1.001, 1.334, 1.364, 1.73, 1.71, 0.045, 0.05, 0.137, 0.123, ...
        0.225, 0.207, 0.401, 0.383, 0.672, 0.681, 1.116, 1.078, 1.554, ...
        1.526, 1.932, 1.914, 0.07, 0.068, 0.173, 0.165, 0.277, 0.248, ...
        0.434, 0.426, 0.703, 0.689, 1.067, 1.077, 1.629, 1.479, 2.003, ...
        1.884, 0.011, 0.016, 0.118, 0.108, 0.2, 0.206, 0.364, 0.36, 0.62, ...
        0.64, 0.979, 0.973, 1.424, 1.399, 1.74, 1.732, 0.035, 0.035, ...
        0.132, 0.135, 0.224, 0.22, 0.385, 0.39, 0.658, 0.647, 1.06, 1.031, ...
        1.425, 1.409, 1.75, 1.738, 0.086, 0.103, 0.191, 0.189, 0.272, ...
        0.277, 0.44, 0.426, 0.686, 0.676, 1.062, 1.072, 1.424, 1.459, ...
        1.768, 1.806, 0.094, 0.092, 0.182, 0.182, 0.282, 0.273, 0.444, ...
        0.439, 0.686, 0.668, 1.052, 1.035, 1.409, 1.392, 1.759, 1.739, ...
        0.054, 0.054, 0.152, 0.148, 0.226, 0.222, 0.392, 0.383, 0.658, ...
        0.644, 1.043, 1.002, 1.466, 1.381, 1.743, 1.724, 0.032, 0.043, ...
        0.142, 0.155, 0.239, 0.242, 0.42, 0.395, 0.624, 0.705, 1.046, ...
        1.026, 1.398, 1.405, 1.693, 1.729, 0.052, 0.094, 0.164, 0.166, ...
        0.259, 0.256, 0.439, 0.439, 0.69, 0.701, 1.042, 1.075, 1.34, ...
        1.406, 1.699, 1.708, 0.047, 0.057, 0.159, 0.155, 0.246, 0.252, ...
        0.427, 0.411, 0.704, 0.684, 0.994, 0.98, 1.421, 1.385, 1.715, ...
        1.721]';
      out = table (Run, conc, density);
    endfunction

  endmethods

endclassdef