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

function out = colvecfun (fcn, x)
  %COLVECFUN Apply a function to each of the column vectors in an array
  %
  % out = colvecfun (fcn, x)
  %
  % Applies the 
  %
  % Fcn must be a function which takes a column vector and returns a column
  % vector of the same size. It does not have to return the same type.
  %
  % Returns the result of applying fcn to each column in x, all concatenated
  % together in the same shape as x.
  
  narginchk (2, 2);
  if ! isa (fcn, 'function_handle')
    error ('colvecfun: input fcn must be a function handle; got a %s', class (fcn));
  endif
  
  out = colvecfun_impl (fcn, x);
  
endfunction

# The following code was generated by octave.table.internal.gen_colvecfun

function out = colvecfun_impl (fcn, x)

  switch ndims (x)
    case 1
      out = colvecfun_for_1_dims (fcn, x);
    case 2
      out = colvecfun_for_2_dims (fcn, x);
    case 3
      out = colvecfun_for_3_dims (fcn, x);
    case 4
      out = colvecfun_for_4_dims (fcn, x);
    case 5
      out = colvecfun_for_5_dims (fcn, x);
    case 6
      out = colvecfun_for_6_dims (fcn, x);
    case 7
      out = colvecfun_for_7_dims (fcn, x);
    case 8
      out = colvecfun_for_8_dims (fcn, x);
    case 9
      out = colvecfun_for_9_dims (fcn, x);
    case 10
      out = colvecfun_for_10_dims (fcn, x);
    case 11
      out = colvecfun_for_11_dims (fcn, x);
    case 12
      out = colvecfun_for_12_dims (fcn, x);
    case 13
      out = colvecfun_for_13_dims (fcn, x);
    case 14
      out = colvecfun_for_14_dims (fcn, x);
    case 15
      out = colvecfun_for_15_dims (fcn, x);
    case 16
      out = colvecfun_for_16_dims (fcn, x);
    case 17
      out = colvecfun_for_17_dims (fcn, x);
    case 18
      out = colvecfun_for_18_dims (fcn, x);
    case 19
      out = colvecfun_for_19_dims (fcn, x);
    case 20
      out = colvecfun_for_20_dims (fcn, x);
    otherwise
      error ("colvecfun: max ndims for input is %d dims; got %d dims", ...
        20, ndims (x));
  endswitch

endfunction

function out = colvecfun_for_1_dims (fcn, x)
  out = fcn (x);
endfunction

function out = colvecfun_for_2_dims (fcn, x)
  out1 = fcn (x(:,1));
  sz = size (x);
  out = repmat(out1, [1 sz(2:end)]);
  for i_dim_2 = 1:sz(2)
    out(:,i_dim_2) = fcn (x(:,i_dim_2));
  endfor
endfunction

function out = colvecfun_for_3_dims (fcn, x)
  out1 = fcn (x(:,1,1));
  sz = size (x);
  out = repmat(out1, [1 sz(2:end)]);
  for i_dim_3 = 1:sz(3)
    for i_dim_2 = 1:sz(2)
      out(:,i_dim_2,i_dim_3) = fcn (x(:,i_dim_2,i_dim_3));
    endfor
  endfor
endfunction

function out = colvecfun_for_4_dims (fcn, x)
  out1 = fcn (x(:,1,1,1));
  sz = size (x);
  out = repmat(out1, [1 sz(2:end)]);
  for i_dim_4 = 1:sz(4)
    for i_dim_3 = 1:sz(3)
      for i_dim_2 = 1:sz(2)
        out(:,i_dim_2,i_dim_3,i_dim_4) = fcn (x(:,i_dim_2,i_dim_3,i_dim_4));
      endfor
    endfor
  endfor
endfunction

function out = colvecfun_for_5_dims (fcn, x)
  out1 = fcn (x(:,1,1,1,1));
  sz = size (x);
  out = repmat(out1, [1 sz(2:end)]);
  for i_dim_5 = 1:sz(5)
    for i_dim_4 = 1:sz(4)
      for i_dim_3 = 1:sz(3)
        for i_dim_2 = 1:sz(2)
          out(:,i_dim_2,i_dim_3,i_dim_4,i_dim_5) = fcn (x(:,i_dim_2,i_dim_3,i_dim_4,i_dim_5));
        endfor
      endfor
    endfor
  endfor
endfunction

function out = colvecfun_for_6_dims (fcn, x)
  out1 = fcn (x(:,1,1,1,1,1));
  sz = size (x);
  out = repmat(out1, [1 sz(2:end)]);
  for i_dim_6 = 1:sz(6)
    for i_dim_5 = 1:sz(5)
      for i_dim_4 = 1:sz(4)
        for i_dim_3 = 1:sz(3)
          for i_dim_2 = 1:sz(2)
            out(:,i_dim_2,i_dim_3,i_dim_4,i_dim_5,i_dim_6) = fcn (x(:,i_dim_2,i_dim_3,i_dim_4,i_dim_5,i_dim_6));
          endfor
        endfor
      endfor
    endfor
  endfor
endfunction

function out = colvecfun_for_7_dims (fcn, x)
  out1 = fcn (x(:,1,1,1,1,1,1));
  sz = size (x);
  out = repmat(out1, [1 sz(2:end)]);
  for i_dim_7 = 1:sz(7)
    for i_dim_6 = 1:sz(6)
      for i_dim_5 = 1:sz(5)
        for i_dim_4 = 1:sz(4)
          for i_dim_3 = 1:sz(3)
            for i_dim_2 = 1:sz(2)
              out(:,i_dim_2,i_dim_3,i_dim_4,i_dim_5,i_dim_6,i_dim_7) = fcn (x(:,i_dim_2,i_dim_3,i_dim_4,i_dim_5,i_dim_6,i_dim_7));
            endfor
          endfor
        endfor
      endfor
    endfor
  endfor
endfunction

function out = colvecfun_for_8_dims (fcn, x)
  out1 = fcn (x(:,1,1,1,1,1,1,1));
  sz = size (x);
  out = repmat(out1, [1 sz(2:end)]);
  for i_dim_8 = 1:sz(8)
    for i_dim_7 = 1:sz(7)
      for i_dim_6 = 1:sz(6)
        for i_dim_5 = 1:sz(5)
          for i_dim_4 = 1:sz(4)
            for i_dim_3 = 1:sz(3)
              for i_dim_2 = 1:sz(2)
                out(:,i_dim_2,i_dim_3,i_dim_4,i_dim_5,i_dim_6,i_dim_7,i_dim_8) = fcn (x(:,i_dim_2,i_dim_3,i_dim_4,i_dim_5,i_dim_6,i_dim_7,i_dim_8));
              endfor
            endfor
          endfor
        endfor
      endfor
    endfor
  endfor
endfunction

function out = colvecfun_for_9_dims (fcn, x)
  out1 = fcn (x(:,1,1,1,1,1,1,1,1));
  sz = size (x);
  out = repmat(out1, [1 sz(2:end)]);
  for i_dim_9 = 1:sz(9)
    for i_dim_8 = 1:sz(8)
      for i_dim_7 = 1:sz(7)
        for i_dim_6 = 1:sz(6)
          for i_dim_5 = 1:sz(5)
            for i_dim_4 = 1:sz(4)
              for i_dim_3 = 1:sz(3)
                for i_dim_2 = 1:sz(2)
                  out(:,i_dim_2,i_dim_3,i_dim_4,i_dim_5,i_dim_6,i_dim_7,i_dim_8,i_dim_9) = fcn (x(:,i_dim_2,i_dim_3,i_dim_4,i_dim_5,i_dim_6,i_dim_7,i_dim_8,i_dim_9));
                endfor
              endfor
            endfor
          endfor
        endfor
      endfor
    endfor
  endfor
endfunction

function out = colvecfun_for_10_dims (fcn, x)
  out1 = fcn (x(:,1,1,1,1,1,1,1,1,1));
  sz = size (x);
  out = repmat(out1, [1 sz(2:end)]);
  for i_dim_10 = 1:sz(10)
    for i_dim_9 = 1:sz(9)
      for i_dim_8 = 1:sz(8)
        for i_dim_7 = 1:sz(7)
          for i_dim_6 = 1:sz(6)
            for i_dim_5 = 1:sz(5)
              for i_dim_4 = 1:sz(4)
                for i_dim_3 = 1:sz(3)
                  for i_dim_2 = 1:sz(2)
                    out(:,i_dim_2,i_dim_3,i_dim_4,i_dim_5,i_dim_6,i_dim_7,i_dim_8,i_dim_9,i_dim_10) = fcn (x(:,i_dim_2,i_dim_3,i_dim_4,i_dim_5,i_dim_6,i_dim_7,i_dim_8,i_dim_9,i_dim_10));
                  endfor
                endfor
              endfor
            endfor
          endfor
        endfor
      endfor
    endfor
  endfor
endfunction

function out = colvecfun_for_11_dims (fcn, x)
  out1 = fcn (x(:,1,1,1,1,1,1,1,1,1,1));
  sz = size (x);
  out = repmat(out1, [1 sz(2:end)]);
  for i_dim_11 = 1:sz(11)
    for i_dim_10 = 1:sz(10)
      for i_dim_9 = 1:sz(9)
        for i_dim_8 = 1:sz(8)
          for i_dim_7 = 1:sz(7)
            for i_dim_6 = 1:sz(6)
              for i_dim_5 = 1:sz(5)
                for i_dim_4 = 1:sz(4)
                  for i_dim_3 = 1:sz(3)
                    for i_dim_2 = 1:sz(2)
                      out(:,i_dim_2,i_dim_3,i_dim_4,i_dim_5,i_dim_6,i_dim_7,i_dim_8,i_dim_9,i_dim_10,i_dim_11) = fcn (x(:,i_dim_2,i_dim_3,i_dim_4,i_dim_5,i_dim_6,i_dim_7,i_dim_8,i_dim_9,i_dim_10,i_dim_11));
                    endfor
                  endfor
                endfor
              endfor
            endfor
          endfor
        endfor
      endfor
    endfor
  endfor
endfunction

function out = colvecfun_for_12_dims (fcn, x)
  out1 = fcn (x(:,1,1,1,1,1,1,1,1,1,1,1));
  sz = size (x);
  out = repmat(out1, [1 sz(2:end)]);
  for i_dim_12 = 1:sz(12)
    for i_dim_11 = 1:sz(11)
      for i_dim_10 = 1:sz(10)
        for i_dim_9 = 1:sz(9)
          for i_dim_8 = 1:sz(8)
            for i_dim_7 = 1:sz(7)
              for i_dim_6 = 1:sz(6)
                for i_dim_5 = 1:sz(5)
                  for i_dim_4 = 1:sz(4)
                    for i_dim_3 = 1:sz(3)
                      for i_dim_2 = 1:sz(2)
                        out(:,i_dim_2,i_dim_3,i_dim_4,i_dim_5,i_dim_6,i_dim_7,i_dim_8,i_dim_9,i_dim_10,i_dim_11,i_dim_12) = fcn (x(:,i_dim_2,i_dim_3,i_dim_4,i_dim_5,i_dim_6,i_dim_7,i_dim_8,i_dim_9,i_dim_10,i_dim_11,i_dim_12));
                      endfor
                    endfor
                  endfor
                endfor
              endfor
            endfor
          endfor
        endfor
      endfor
    endfor
  endfor
endfunction

function out = colvecfun_for_13_dims (fcn, x)
  out1 = fcn (x(:,1,1,1,1,1,1,1,1,1,1,1,1));
  sz = size (x);
  out = repmat(out1, [1 sz(2:end)]);
  for i_dim_13 = 1:sz(13)
    for i_dim_12 = 1:sz(12)
      for i_dim_11 = 1:sz(11)
        for i_dim_10 = 1:sz(10)
          for i_dim_9 = 1:sz(9)
            for i_dim_8 = 1:sz(8)
              for i_dim_7 = 1:sz(7)
                for i_dim_6 = 1:sz(6)
                  for i_dim_5 = 1:sz(5)
                    for i_dim_4 = 1:sz(4)
                      for i_dim_3 = 1:sz(3)
                        for i_dim_2 = 1:sz(2)
                          out(:,i_dim_2,i_dim_3,i_dim_4,i_dim_5,i_dim_6,i_dim_7,i_dim_8,i_dim_9,i_dim_10,i_dim_11,i_dim_12,i_dim_13) = fcn (x(:,i_dim_2,i_dim_3,i_dim_4,i_dim_5,i_dim_6,i_dim_7,i_dim_8,i_dim_9,i_dim_10,i_dim_11,i_dim_12,i_dim_13));
                        endfor
                      endfor
                    endfor
                  endfor
                endfor
              endfor
            endfor
          endfor
        endfor
      endfor
    endfor
  endfor
endfunction

function out = colvecfun_for_14_dims (fcn, x)
  out1 = fcn (x(:,1,1,1,1,1,1,1,1,1,1,1,1,1));
  sz = size (x);
  out = repmat(out1, [1 sz(2:end)]);
  for i_dim_14 = 1:sz(14)
    for i_dim_13 = 1:sz(13)
      for i_dim_12 = 1:sz(12)
        for i_dim_11 = 1:sz(11)
          for i_dim_10 = 1:sz(10)
            for i_dim_9 = 1:sz(9)
              for i_dim_8 = 1:sz(8)
                for i_dim_7 = 1:sz(7)
                  for i_dim_6 = 1:sz(6)
                    for i_dim_5 = 1:sz(5)
                      for i_dim_4 = 1:sz(4)
                        for i_dim_3 = 1:sz(3)
                          for i_dim_2 = 1:sz(2)
                            out(:,i_dim_2,i_dim_3,i_dim_4,i_dim_5,i_dim_6,i_dim_7,i_dim_8,i_dim_9,i_dim_10,i_dim_11,i_dim_12,i_dim_13,i_dim_14) = fcn (x(:,i_dim_2,i_dim_3,i_dim_4,i_dim_5,i_dim_6,i_dim_7,i_dim_8,i_dim_9,i_dim_10,i_dim_11,i_dim_12,i_dim_13,i_dim_14));
                          endfor
                        endfor
                      endfor
                    endfor
                  endfor
                endfor
              endfor
            endfor
          endfor
        endfor
      endfor
    endfor
  endfor
endfunction

function out = colvecfun_for_15_dims (fcn, x)
  out1 = fcn (x(:,1,1,1,1,1,1,1,1,1,1,1,1,1,1));
  sz = size (x);
  out = repmat(out1, [1 sz(2:end)]);
  for i_dim_15 = 1:sz(15)
    for i_dim_14 = 1:sz(14)
      for i_dim_13 = 1:sz(13)
        for i_dim_12 = 1:sz(12)
          for i_dim_11 = 1:sz(11)
            for i_dim_10 = 1:sz(10)
              for i_dim_9 = 1:sz(9)
                for i_dim_8 = 1:sz(8)
                  for i_dim_7 = 1:sz(7)
                    for i_dim_6 = 1:sz(6)
                      for i_dim_5 = 1:sz(5)
                        for i_dim_4 = 1:sz(4)
                          for i_dim_3 = 1:sz(3)
                            for i_dim_2 = 1:sz(2)
                              out(:,i_dim_2,i_dim_3,i_dim_4,i_dim_5,i_dim_6,i_dim_7,i_dim_8,i_dim_9,i_dim_10,i_dim_11,i_dim_12,i_dim_13,i_dim_14,i_dim_15) = fcn (x(:,i_dim_2,i_dim_3,i_dim_4,i_dim_5,i_dim_6,i_dim_7,i_dim_8,i_dim_9,i_dim_10,i_dim_11,i_dim_12,i_dim_13,i_dim_14,i_dim_15));
                            endfor
                          endfor
                        endfor
                      endfor
                    endfor
                  endfor
                endfor
              endfor
            endfor
          endfor
        endfor
      endfor
    endfor
  endfor
endfunction

function out = colvecfun_for_16_dims (fcn, x)
  out1 = fcn (x(:,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1));
  sz = size (x);
  out = repmat(out1, [1 sz(2:end)]);
  for i_dim_16 = 1:sz(16)
    for i_dim_15 = 1:sz(15)
      for i_dim_14 = 1:sz(14)
        for i_dim_13 = 1:sz(13)
          for i_dim_12 = 1:sz(12)
            for i_dim_11 = 1:sz(11)
              for i_dim_10 = 1:sz(10)
                for i_dim_9 = 1:sz(9)
                  for i_dim_8 = 1:sz(8)
                    for i_dim_7 = 1:sz(7)
                      for i_dim_6 = 1:sz(6)
                        for i_dim_5 = 1:sz(5)
                          for i_dim_4 = 1:sz(4)
                            for i_dim_3 = 1:sz(3)
                              for i_dim_2 = 1:sz(2)
                                out(:,i_dim_2,i_dim_3,i_dim_4,i_dim_5,i_dim_6,i_dim_7,i_dim_8,i_dim_9,i_dim_10,i_dim_11,i_dim_12,i_dim_13,i_dim_14,i_dim_15,i_dim_16) = fcn (x(:,i_dim_2,i_dim_3,i_dim_4,i_dim_5,i_dim_6,i_dim_7,i_dim_8,i_dim_9,i_dim_10,i_dim_11,i_dim_12,i_dim_13,i_dim_14,i_dim_15,i_dim_16));
                              endfor
                            endfor
                          endfor
                        endfor
                      endfor
                    endfor
                  endfor
                endfor
              endfor
            endfor
          endfor
        endfor
      endfor
    endfor
  endfor
endfunction

function out = colvecfun_for_17_dims (fcn, x)
  out1 = fcn (x(:,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1));
  sz = size (x);
  out = repmat(out1, [1 sz(2:end)]);
  for i_dim_17 = 1:sz(17)
    for i_dim_16 = 1:sz(16)
      for i_dim_15 = 1:sz(15)
        for i_dim_14 = 1:sz(14)
          for i_dim_13 = 1:sz(13)
            for i_dim_12 = 1:sz(12)
              for i_dim_11 = 1:sz(11)
                for i_dim_10 = 1:sz(10)
                  for i_dim_9 = 1:sz(9)
                    for i_dim_8 = 1:sz(8)
                      for i_dim_7 = 1:sz(7)
                        for i_dim_6 = 1:sz(6)
                          for i_dim_5 = 1:sz(5)
                            for i_dim_4 = 1:sz(4)
                              for i_dim_3 = 1:sz(3)
                                for i_dim_2 = 1:sz(2)
                                  out(:,i_dim_2,i_dim_3,i_dim_4,i_dim_5,i_dim_6,i_dim_7,i_dim_8,i_dim_9,i_dim_10,i_dim_11,i_dim_12,i_dim_13,i_dim_14,i_dim_15,i_dim_16,i_dim_17) = fcn (x(:,i_dim_2,i_dim_3,i_dim_4,i_dim_5,i_dim_6,i_dim_7,i_dim_8,i_dim_9,i_dim_10,i_dim_11,i_dim_12,i_dim_13,i_dim_14,i_dim_15,i_dim_16,i_dim_17));
                                endfor
                              endfor
                            endfor
                          endfor
                        endfor
                      endfor
                    endfor
                  endfor
                endfor
              endfor
            endfor
          endfor
        endfor
      endfor
    endfor
  endfor
endfunction

function out = colvecfun_for_18_dims (fcn, x)
  out1 = fcn (x(:,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1));
  sz = size (x);
  out = repmat(out1, [1 sz(2:end)]);
  for i_dim_18 = 1:sz(18)
    for i_dim_17 = 1:sz(17)
      for i_dim_16 = 1:sz(16)
        for i_dim_15 = 1:sz(15)
          for i_dim_14 = 1:sz(14)
            for i_dim_13 = 1:sz(13)
              for i_dim_12 = 1:sz(12)
                for i_dim_11 = 1:sz(11)
                  for i_dim_10 = 1:sz(10)
                    for i_dim_9 = 1:sz(9)
                      for i_dim_8 = 1:sz(8)
                        for i_dim_7 = 1:sz(7)
                          for i_dim_6 = 1:sz(6)
                            for i_dim_5 = 1:sz(5)
                              for i_dim_4 = 1:sz(4)
                                for i_dim_3 = 1:sz(3)
                                  for i_dim_2 = 1:sz(2)
                                    out(:,i_dim_2,i_dim_3,i_dim_4,i_dim_5,i_dim_6,i_dim_7,i_dim_8,i_dim_9,i_dim_10,i_dim_11,i_dim_12,i_dim_13,i_dim_14,i_dim_15,i_dim_16,i_dim_17,i_dim_18) = fcn (x(:,i_dim_2,i_dim_3,i_dim_4,i_dim_5,i_dim_6,i_dim_7,i_dim_8,i_dim_9,i_dim_10,i_dim_11,i_dim_12,i_dim_13,i_dim_14,i_dim_15,i_dim_16,i_dim_17,i_dim_18));
                                  endfor
                                endfor
                              endfor
                            endfor
                          endfor
                        endfor
                      endfor
                    endfor
                  endfor
                endfor
              endfor
            endfor
          endfor
        endfor
      endfor
    endfor
  endfor
endfunction

function out = colvecfun_for_19_dims (fcn, x)
  out1 = fcn (x(:,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1));
  sz = size (x);
  out = repmat(out1, [1 sz(2:end)]);
  for i_dim_19 = 1:sz(19)
    for i_dim_18 = 1:sz(18)
      for i_dim_17 = 1:sz(17)
        for i_dim_16 = 1:sz(16)
          for i_dim_15 = 1:sz(15)
            for i_dim_14 = 1:sz(14)
              for i_dim_13 = 1:sz(13)
                for i_dim_12 = 1:sz(12)
                  for i_dim_11 = 1:sz(11)
                    for i_dim_10 = 1:sz(10)
                      for i_dim_9 = 1:sz(9)
                        for i_dim_8 = 1:sz(8)
                          for i_dim_7 = 1:sz(7)
                            for i_dim_6 = 1:sz(6)
                              for i_dim_5 = 1:sz(5)
                                for i_dim_4 = 1:sz(4)
                                  for i_dim_3 = 1:sz(3)
                                    for i_dim_2 = 1:sz(2)
                                      out(:,i_dim_2,i_dim_3,i_dim_4,i_dim_5,i_dim_6,i_dim_7,i_dim_8,i_dim_9,i_dim_10,i_dim_11,i_dim_12,i_dim_13,i_dim_14,i_dim_15,i_dim_16,i_dim_17,i_dim_18,i_dim_19) = fcn (x(:,i_dim_2,i_dim_3,i_dim_4,i_dim_5,i_dim_6,i_dim_7,i_dim_8,i_dim_9,i_dim_10,i_dim_11,i_dim_12,i_dim_13,i_dim_14,i_dim_15,i_dim_16,i_dim_17,i_dim_18,i_dim_19));
                                    endfor
                                  endfor
                                endfor
                              endfor
                            endfor
                          endfor
                        endfor
                      endfor
                    endfor
                  endfor
                endfor
              endfor
            endfor
          endfor
        endfor
      endfor
    endfor
  endfor
endfunction

function out = colvecfun_for_20_dims (fcn, x)
  out1 = fcn (x(:,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1));
  sz = size (x);
  out = repmat(out1, [1 sz(2:end)]);
  for i_dim_20 = 1:sz(20)
    for i_dim_19 = 1:sz(19)
      for i_dim_18 = 1:sz(18)
        for i_dim_17 = 1:sz(17)
          for i_dim_16 = 1:sz(16)
            for i_dim_15 = 1:sz(15)
              for i_dim_14 = 1:sz(14)
                for i_dim_13 = 1:sz(13)
                  for i_dim_12 = 1:sz(12)
                    for i_dim_11 = 1:sz(11)
                      for i_dim_10 = 1:sz(10)
                        for i_dim_9 = 1:sz(9)
                          for i_dim_8 = 1:sz(8)
                            for i_dim_7 = 1:sz(7)
                              for i_dim_6 = 1:sz(6)
                                for i_dim_5 = 1:sz(5)
                                  for i_dim_4 = 1:sz(4)
                                    for i_dim_3 = 1:sz(3)
                                      for i_dim_2 = 1:sz(2)
                                        out(:,i_dim_2,i_dim_3,i_dim_4,i_dim_5,i_dim_6,i_dim_7,i_dim_8,i_dim_9,i_dim_10,i_dim_11,i_dim_12,i_dim_13,i_dim_14,i_dim_15,i_dim_16,i_dim_17,i_dim_18,i_dim_19,i_dim_20) = fcn (x(:,i_dim_2,i_dim_3,i_dim_4,i_dim_5,i_dim_6,i_dim_7,i_dim_8,i_dim_9,i_dim_10,i_dim_11,i_dim_12,i_dim_13,i_dim_14,i_dim_15,i_dim_16,i_dim_17,i_dim_18,i_dim_19,i_dim_20));
                                      endfor
                                    endfor
                                  endfor
                                endfor
                              endfor
                            endfor
                          endfor
                        endfor
                      endfor
                    endfor
                  endfor
                endfor
              endfor
            endfor
          endfor
        endfor
      endfor
    endfor
  endfor
endfunction
