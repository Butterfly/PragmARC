-- PragmAda Reusable Component (PragmARC)
-- Copyright (C) 2016 by PragmAda Software Engineering.  All rights reserved.
-- **************************************************************************
--
-- History:
-- 2016 Jun 01     J. Carter          V1.1--Changed comment for empty declarative part
-- 2013 Mar 01     J. Carter          V1.0--Initial Ada-07 version
---------------------------------------------------------------------------------------------------
-- 2002 Oct 01     J. Carter          V1.4--Added Context to Iterate; use mode out to allow scalars
-- 2001 Jun 01     J. Carter          V1.3--Added Peek
-- 2001 May 01     J. Carter          V1.2--Improved time complexity of Is_Empty
-- 2000 Dec 01     J. Carter          V1.1--Revised implementation of Iterate
-- 2000 May 01     J. Carter          V1.0--Initial release
--
package body PragmARC.Queue_Unbounded is
   protected body Handle is
      procedure Clear is
         -- Empty
      begin -- Clear
         Implementation.Clear (Queue => Queue);
      end Clear;

      procedure Put (Item : in Element) is
         -- Empty
      begin -- Put
         Implementation.Put (Item => Item, Onto => Queue);
      end Put;

      procedure Get (Item : out Element) is
         -- Empty
      begin -- Get
         Implementation.Get (Item => Item, From => Queue);
      end Get;

      function Is_Empty return Boolean is
         -- Empty
      begin -- Is_Empty
         return Implementation.Is_Empty (Queue);
      end Is_Empty;

      function Length return Natural is
         -- Empty
      begin -- Length
         return Implementation.Length (Queue);
      end Length;

      function Peek return Element is
         -- Empty
      begin -- Peek
         return Implementation.Peek (Queue);
      end Peek;

      procedure Iterate (Action : access procedure (Item : in out Element; Continue : out Boolean) ) is
         procedure Local is new Implementation.Iterate (Action => Action.all);
      begin -- Iterate
         Local (Over => Queue);
      end Iterate;
   end Handle;
end PragmARC.Queue_Unbounded;
--
-- This is free software; you can redistribute it and/or modify it under
-- terms of the GNU General Public License as published by the Free Software
-- Foundation; either version 2, or (at your option) any later version.
-- This software is distributed in the hope that it will be useful, but WITH
-- OUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY
-- or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License
-- for more details. Free Software Foundation, 59 Temple Place - Suite
-- 330, Boston, MA 02111-1307, USA.
--
-- As a special exception, if other files instantiate generics from this
-- unit, or you link this unit with other files to produce an executable,
-- this unit does not by itself cause the resulting executable to be
-- covered by the GNU General Public License. This exception does not
-- however invalidate any other reasons why the executable file might be
-- covered by the GNU Public License.
