--
--  File Name:         TestCtrl_e.vhd
--  Design Unit Name:  TestCtrl
--  OSVVM Release:     OSVVM MODELS STANDARD VERSION
--
--  Maintainer:        Jim Lewis      email:  jim@synthworks.com
--  Contributor(s):
--     Jim Lewis      jim@synthworks.com
--
--
--  Description:
--    Entity for TestCtrl architectures
--
--
--  Developed by:
--        SynthWorks Design Inc.
--        VHDL Training Classes
--        http://www.SynthWorks.com
--
--  Revision History:
--    Date      Version    Description
--    07/2024   2024.07    Replaced UartRecArrayType with StreamRecArrayType.  Does not work in Xcelium
--    01/2020   2020.01    Updated license notice
--    2019.05   2019.05    Updated for OSVVM public release
--    1999      1999.00    Developed for SynthWorks' Advanced VHDL Testbenches and Verification Class
--
--
--  This file is part of OSVVM.
--
--  Copyright (c) 1999 - 2020 by SynthWorks Design Inc.
--
--  Licensed under the Apache License, Version 2.0 (the "License");
--  you may not use this file except in compliance with the License.
--  You may obtain a copy of the License at
--
--      https://www.apache.org/licenses/LICENSE-2.0
--
--  Unless required by applicable law or agreed to in writing, software
--  distributed under the License is distributed on an "AS IS" BASIS,
--  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
--  See the License for the specific language governing permissions and
--  limitations under the License.
--

library ieee ;
  use ieee.std_logic_1164.all ;
  use ieee.numeric_std.all ;
  use ieee.numeric_std_unsigned.all ;
  use std.textio.all ;
  
library OSVVM ; 
  context OSVVM.OsvvmContext ; 

library osvvm_uart ; 
  context osvvm_uart.UartContext ; 
  
use work.OsvvmTestCommonPkg.all ;

entity TestCtrl is
  generic (
    NUM_UARTS : integer := 16
  ) ; 
  port (
    -- Record Interface
    UartTxRec          : InOut StreamRecArrayType ;
    UartRxRec          : InOut StreamRecArrayType ;

    -- Global Signal Interface
    nReset              : In    std_logic 
  ) ;
end TestCtrl ;
