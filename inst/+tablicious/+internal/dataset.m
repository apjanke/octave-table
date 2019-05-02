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

classdef (Abstract) dataset
  %DATASET An example dataset, managed by Tablicious’ datasets mechanism
  %
  % To use this, subclass it, and have your constructor populate
  % the name and description fields, and implement load(), regenerate(),
  % and possibly fetch().
  % 
  % There are three typical ways to define a dataset:
  %   - All in code, in which case your subclass will just implement load()
  %   - As a stored, checked-in mat-file, in which case your subclass will
  %       implement regenerate_dataset() and load()
  %   - As a cached post-installation mat-file, in which case your subclass
  %       will implement cache_dataset() and load(), and make use of
  %       cache_file_path() in both of them.

  properties (Constant)
    % The list of datasets included with Tablicious itself, in the
    % tablicious.internal.datasets namespace. The names here must match
    % The class base name.
    %
    % Keep this list in asciibetical order, for tidiness.
    included_datasets = {
      'AirPassengers'
      'airmiles'
      'beavers'
      'iris'
    }
  endproperties

  properties
    name
    description
  endproperties

  methods (Static)

    function out = lookup (name)
      if ! ismember (name, tablicious.internal.dataset.included_datasets)
        error ("No defined dataset with name '%s'", name);
      endif
      class_name = ['tablicious.internal.datasets.' name];
      out = feval (class_name);
    endfunction

    function regenerate_all_datasets ()
      names = tablicious.internal.dataset.included_datasets;
      for i = 1:numel (names)
        dset = tablicious.internal.dataset.lookup (names{i});
        dset.regenerate_dataset ();
      endfor
    endfunction
  endmethods

  methods
    
    function out = load (this)
      %LOAD Load the dataset from its local files
      %
      % This is what gets called when a user does tablicious.datasets.load('foo').
      %
      % This method must return a scalar struct whose fields are
      % the variables defined in this dataset.
      error('dataset.load is abstract. Subclass %s must implement it, but it does not.', ...
        class (this));
    endfunction

    function regenerate_dataset (this)
      % Regenerate the dataset from its original source
      %
      % This is what goes out to a website or some other source, downloads
      % the original source data, parses and munges it, and saves it as a
      % .mat file (or something else) in the Tablicious source tree. This is
      % called at development time by the dataset’s maintainer. It should not
      % be called by the user.
      %
      % Since the dataset is never expected to change, and the generated files
      % are checked into the source tree, this method only needs to be called
      % if the file format for Octave mat-files changes, or something similar.
      % So, basically never, and it's included just as a reference for where
      % the data came from.
      %
      % This is a do-nothing in the base class. Leave it as a do-nothing if
      % your dataset does not require regeneration.
    endfunction

    function cache_dataset (this)
      % Cache the dataset by downloading it and storing in user cache files
      %
      % This is what gets called by cache_all_datasets. The user will call
      % that after installing Octave. This caching mechanism is for datasets
      % that cannot be directly redistributed with Octave or Tablicious itself,
      % for size or licensing reasons.
      %
      % Most datasets should not require caching, so this should be left as
      % a do-nothing method for most datasets.
    endfunction

    function out = cache_file_path (this)
      %CACHE_FILE_PATH Path to the local cache file, for classes that use caching

      if ispc
        error (['tablicious.internal.dataset.cache_file_path: this is not ' ...
          'implemented for Windows yet. Sorry.']);
      else
        % Use the XDG standard cache location on Linux and Mac
        xdg_cache_dir = fullfile (getenv ('HOME'), '.cache');
        datasets_cache_dir = fullfile (xdg_cache_dir, 'octave', 'tablicious', 'datasets');
      endif
      out = fullfile (datasets_cache_dir, [class(this) '.mat']);
    endfunction

  endmethods

endclassdef